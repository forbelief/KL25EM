/*
 *文件：	OutputControl.c
 *目的：	输出执行阶段是对数据处理阶段处理结果的执行，包括：
 *        		选择合适的控制方法，输出速度，角度到实际。比如PID。
 *        		进行无线通讯，对另一个车子报告自身的状态，包括启动/停止信号，速度档位，
 *        		速度，角度，还有将超声波传感器的测距值进行共享。如果有必要，可以附
 *        		加其他信息，比如道路状况。
 *
 *流程：	速度PID控制。角度一次差分处理。通讯信息转化成字符发送。
 */


#include "OutputControl.h"


volatile int16_t InterruptExpextPID;	//PID期望速度，中断里执行

static volatile ParamPID_T ParamPID = {0.07, 0, 250, 30, 2};	//Kp_Kp  Ti_Ki  Td_Kd  critical_i  min;

volatile int16_t SpeedBackGlobal;	//反馈速度，全局变量，其他模块使用


/****************************************************************
 * 功能：	初始化进行速度PID控制，角度控制，通讯发送所需的设置
 * 形参：
 *      	无
 * 返回：
 *      	无
 */
void InitControl(void)
{
	InitSpeedPID();
	InitServo();
	//uart_init (Message_UARTx, 115200);	//UART发送初始化，数据收集模块已完成初始化
}

/****************************************************************
 * 功能：	初始化进行速度PID控制
 * 形参：
 *      	无
 * 返回：
 *      	无
 */
void InitSpeedPID(void)
{
	//速度PID控制
	uint_32 cnt;
	
	cnt = bus_clk_khz * PID_T_MS ;
	pit_init(PID_T_PIT_Tn, cnt);//定时模块初始化
	lptmr_counter_init(PID_Counter_LPT_CHn, (uint16_t)7, LPT_Rising);//计数模块初始化
	
	InitMotor();
}



/************************************************************************************
 *功能：	对输入得到其二阶差分后的结果
 *形参：
 *      	ParamDiff：	偏差参数地址，数组下标表示对应的阶数
 *			InputLog:	原始输入，下标0代表本次输入
 *返回：
 *      	result：	加入差分后的输出
 */
int32_t DiffController(int32_t ParamDiff[3], int32_t InputLog[3])
{
	int32_t diff[3];						//偏差，下标表示阶数
	int32_t result;
	
	diff[0] = InputLog[0];
	diff[1] = diff[0] - InputLog[1];
	diff[2] = diff[1] - (InputLog[1] - InputLog[2]);
	
	result = (ParamDiff[0] * diff[0] + ParamDiff[1] * diff[1] + ParamDiff[2] * diff[2]) / 100;
	//printf("***1=%d,2=%d\n", ParamDiff[1] * diff[1] / 100, ParamDiff[2] * diff[2] / 100);
	return result;
}





/****************************************************************
 *功能：	增量式PID控制器算法
 *形参：
 *      	ExpextPID：	PID期望值
 *      	BackPID：	反馈到PID的值
 *      	ParamPID：	PID输入参数 
 *返回：
 *      	OutPID：	PID控制器输出值
 */
float PID_DigitalController(float ExpectPID, float BackPID, ParamPID_T ParamPID)
{
	float p_gain, i_gain, d_gain, temp; 	//依次为比例增益，积分增益，微分增益
	static float OutPID, e[3], u[2];		//e[0]:往前数两次的偏差。e[1]:往前数一次的偏差。e[2]:本次偏差。u[0]:上次输出增量。u[1]:本次输出增量。
	
	temp = ExpectPID - BackPID;		//防止振荡
	if (temp < 0)       
		temp = - temp;
	if (temp < ParamPID.min)
		return(OutPID);
    
	e[0] = e[1];				//更新偏差
	e[1] = e[2];
	e[2] = ExpectPID - BackPID;
	
	ParamPID.Kp_Kp = ParamPID.Kp_Kp;
	ParamPID.Ti_Ki = ParamPID.Kp_Kp * PID_T_MS  / ParamPID.Ti_Ki;//单位要换算过来
	ParamPID.Td_Kd = ParamPID.Kp_Kp * ParamPID.Td_Kd / PID_T_MS ;
	
	if (e[2] > ParamPID.critical_i)		//i，积分分离
		i_gain = 0;
	else
		i_gain = 0;			//对于智能车，去掉积分
		//i_gain = ParamPID.Ti_Ki * e[2];
	p_gain = ParamPID.Kp_Kp * (e[2] - e[1]);			//p
	d_gain = ParamPID.Td_Kd * (e[2] - 2 * e[1] + e[0]);	//d

	u[0] = u[1];							//更新输出增量
	u[1] = p_gain + i_gain + d_gain + u[0];
	OutPID += u[1];							//累加增量至输出
	
	if(OutPID > MotorUpValid)				//防止积分饱和
		OutPID = RangePower;
	if(OutPID < MotorDownValid)
		OutPID = -RangePower;
	return OutPID;
}




/****************************************************************
 *功能：	读取当前实际速度
 *形参：
 *      	无
 *返回：
 *      	SpeedBack：	反馈速度，单位cm/s
 */
float ReadSpeedBack(void)
{
	uint_16 CountPulse;
	float SpeedBack;
	
	CountPulse = lptmr_pulse_get();
	SpeedBack = CountPulse / CountEncodeValid * DiameterWheel_CM * PI / PID_T_MS * 1000; //返回速度，单位cm/s。
	//DisplayDebug[6].num = (int32_t)SpeedBack;
	
	SpeedBackGlobal = (int16_t)SpeedBack;
	
	return SpeedBack;
}


/****************************************************************
 *功能：	关闭PID控制，以防止一些错误发生
 *形参：
 *      	无
 *返回：
 *      	无
 */
void ClosePID(void)
{
	pit_time_close(PID_T_PIT_Tn);			//关闭pit定时器
	
	LPTMR0_CSR  &= ~LPTMR_CSR_TEN_MASK;		//禁用LPT的时候就会自动清计数器的值
}



/****************************************************************
 *功能：	打开PID控制
 *形参：
 *      	无
 *返回：
 *      	无
 */
void OpenPID(void)
{
	lptmr_pulse_clean();
	
	PIT_TCTRL(PID_T_PIT_Tn) &= ~ PIT_TCTRL_TEN_MASK;	//禁止PITn定时器（用于清空计数值）
	PIT_TCTRL(PID_T_PIT_Tn) |= PIT_TCTRL_TEN_MASK;		//使能 PITn定时器
}



/****************************************************************
 *功能：	角度控制执行
 *形参：
 *      	angle:	角度
 *返回：
 *			无
 */
void AngleControl(int16_t angle)
{
	static int32_t AngleLog[3];				//AngleLog[0]为本次角度
	int32_t ParamDiff[3] = {100, 380, -50};
	int16_t temp;
	
	AngleLog[2] = AngleLog[1];
	AngleLog[1] = AngleLog[0];
	AngleLog[0] = angle;
	temp = (int16_t)DiffController(ParamDiff, AngleLog);
	//temp = (uint16_t)ReceiveDebug_UART_Val[A];
	
	AngleServo(temp);
}


/****************************************************************
 * 功能：	通过UART发送message
 * 形参：
 *      	message:	所需要发送的信息
 * 返回：
 *			无
 */
void MessageSend(Message_T message)
{
	uart_putchar (Message_UARTx, 's');			//发送起始字符
	uart_sendN (Message_UARTx, message.str, MssgStrN);	//发送信息字符
}





/****************************************************************
 * 功能：	输出所有需要输出执行的动作,(接口)
 * 形参：
 *      	OutputData：	需输出的信息
 * 返回：
 *			无
 */
void OutputControl(OutputData_T OutputData)
{
	static uint8_t flag = 0;
	
	if(OutputData.OffPID == 0)		//正常pid控制
	{
		if(flag == 1)
		{
			OpenPID();
			flag = 0;
		}
		
		InterruptExpextPID = OutputData.speed;
		//InterruptExpextPID = (uint16_t)ReceiveDebug_UART_Val[S];
	}
	else
	{
		if(flag == 0)
		{
			ClosePID();
			flag = 1;
		}
		PowerMotor(0);
	}
	AngleControl(OutputData.angle);
	
	MessageSend(OutputData.message);
}












/********************************************************以下为所需的中断*************************************************/

/************************************************************************
 *功能：	pit中断函数，定时中断以执行pid控制
 *形参：
 *      	无
 *返回：
 *      	无
 */
 void PID_PIT_ISR(void)
{
	int16_t power;		//记录pid控制器的输出
	
	if((PIT_TFLG(PID_T_PIT_Tn) &= PIT_TFLG_TIF_MASK) != 0)	//pid
	{
		PIT_Flag_Clear(PID_T_PIT_Tn);

		power = (int16_t)PID_DigitalController((float)InterruptExpextPID, ReadSpeedBack(), ParamPID);
		PowerMotor(power);
		//DisplayDebug[2].num = InterruptExpextPID;
	}
}
