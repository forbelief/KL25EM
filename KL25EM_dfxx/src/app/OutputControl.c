/*
 *�ļ���	OutputControl.c
 *Ŀ�ģ�	���ִ�н׶��Ƕ����ݴ���׶δ�������ִ�У�������
 *        		ѡ����ʵĿ��Ʒ���������ٶȣ��Ƕȵ�ʵ�ʡ�����PID��
 *        		��������ͨѶ������һ�����ӱ��������״̬����������/ֹͣ�źţ��ٶȵ�λ��
 *        		�ٶȣ��Ƕȣ����н��������������Ĳ��ֵ���й�������б�Ҫ�����Ը�
 *        		��������Ϣ�������·״����
 *
 *���̣�	�ٶ�PID���ơ��Ƕ�һ�β�ִ���ͨѶ��Ϣת�����ַ����͡�
 */


#include "OutputControl.h"


volatile int16_t InterruptExpextPID;	//PID�����ٶȣ��ж���ִ��

static volatile ParamPID_T ParamPID = {0.07, 0, 250, 30, 2};	//Kp_Kp  Ti_Ki  Td_Kd  critical_i  min;

volatile int16_t SpeedBackGlobal;	//�����ٶȣ�ȫ�ֱ���������ģ��ʹ��


/****************************************************************
 * ���ܣ�	��ʼ�������ٶ�PID���ƣ��Ƕȿ��ƣ�ͨѶ�������������
 * �βΣ�
 *      	��
 * ���أ�
 *      	��
 */
void InitControl(void)
{
	InitSpeedPID();
	InitServo();
	//uart_init (Message_UARTx, 115200);	//UART���ͳ�ʼ���������ռ�ģ������ɳ�ʼ��
}

/****************************************************************
 * ���ܣ�	��ʼ�������ٶ�PID����
 * �βΣ�
 *      	��
 * ���أ�
 *      	��
 */
void InitSpeedPID(void)
{
	//�ٶ�PID����
	uint_32 cnt;
	
	cnt = bus_clk_khz * PID_T_MS ;
	pit_init(PID_T_PIT_Tn, cnt);//��ʱģ���ʼ��
	lptmr_counter_init(PID_Counter_LPT_CHn, (uint16_t)7, LPT_Rising);//����ģ���ʼ��
	
	InitMotor();
}



/************************************************************************************
 *���ܣ�	������õ�����ײ�ֺ�Ľ��
 *�βΣ�
 *      	ParamDiff��	ƫ�������ַ�������±��ʾ��Ӧ�Ľ���
 *			InputLog:	ԭʼ���룬�±�0����������
 *���أ�
 *      	result��	�����ֺ�����
 */
int32_t DiffController(int32_t ParamDiff[3], int32_t InputLog[3])
{
	int32_t diff[3];						//ƫ��±��ʾ����
	int32_t result;
	
	diff[0] = InputLog[0];
	diff[1] = diff[0] - InputLog[1];
	diff[2] = diff[1] - (InputLog[1] - InputLog[2]);
	
	result = (ParamDiff[0] * diff[0] + ParamDiff[1] * diff[1] + ParamDiff[2] * diff[2]) / 100;
	//printf("***1=%d,2=%d\n", ParamDiff[1] * diff[1] / 100, ParamDiff[2] * diff[2] / 100);
	return result;
}





/****************************************************************
 *���ܣ�	����ʽPID�������㷨
 *�βΣ�
 *      	ExpextPID��	PID����ֵ
 *      	BackPID��	������PID��ֵ
 *      	ParamPID��	PID������� 
 *���أ�
 *      	OutPID��	PID���������ֵ
 */
float PID_DigitalController(float ExpectPID, float BackPID, ParamPID_T ParamPID)
{
	float p_gain, i_gain, d_gain, temp; 	//����Ϊ�������棬�������棬΢������
	static float OutPID, e[3], u[2];		//e[0]:��ǰ�����ε�ƫ�e[1]:��ǰ��һ�ε�ƫ�e[2]:����ƫ�u[0]:�ϴ����������u[1]:�������������
	
	temp = ExpectPID - BackPID;		//��ֹ��
	if (temp < 0)       
		temp = - temp;
	if (temp < ParamPID.min)
		return(OutPID);
    
	e[0] = e[1];				//����ƫ��
	e[1] = e[2];
	e[2] = ExpectPID - BackPID;
	
	ParamPID.Kp_Kp = ParamPID.Kp_Kp;
	ParamPID.Ti_Ki = ParamPID.Kp_Kp * PID_T_MS  / ParamPID.Ti_Ki;//��λҪ�������
	ParamPID.Td_Kd = ParamPID.Kp_Kp * ParamPID.Td_Kd / PID_T_MS ;
	
	if (e[2] > ParamPID.critical_i)		//i�����ַ���
		i_gain = 0;
	else
		i_gain = 0;			//�������ܳ���ȥ������
		//i_gain = ParamPID.Ti_Ki * e[2];
	p_gain = ParamPID.Kp_Kp * (e[2] - e[1]);			//p
	d_gain = ParamPID.Td_Kd * (e[2] - 2 * e[1] + e[0]);	//d

	u[0] = u[1];							//�����������
	u[1] = p_gain + i_gain + d_gain + u[0];
	OutPID += u[1];							//�ۼ����������
	
	if(OutPID > MotorUpValid)				//��ֹ���ֱ���
		OutPID = RangePower;
	if(OutPID < MotorDownValid)
		OutPID = -RangePower;
	return OutPID;
}




/****************************************************************
 *���ܣ�	��ȡ��ǰʵ���ٶ�
 *�βΣ�
 *      	��
 *���أ�
 *      	SpeedBack��	�����ٶȣ���λcm/s
 */
float ReadSpeedBack(void)
{
	uint_16 CountPulse;
	float SpeedBack;
	
	CountPulse = lptmr_pulse_get();
	SpeedBack = CountPulse / CountEncodeValid * DiameterWheel_CM * PI / PID_T_MS * 1000; //�����ٶȣ���λcm/s��
	//DisplayDebug[6].num = (int32_t)SpeedBack;
	
	SpeedBackGlobal = (int16_t)SpeedBack;
	
	return SpeedBack;
}


/****************************************************************
 *���ܣ�	�ر�PID���ƣ��Է�ֹһЩ������
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
void ClosePID(void)
{
	pit_time_close(PID_T_PIT_Tn);			//�ر�pit��ʱ��
	
	LPTMR0_CSR  &= ~LPTMR_CSR_TEN_MASK;		//����LPT��ʱ��ͻ��Զ����������ֵ
}



/****************************************************************
 *���ܣ�	��PID����
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
void OpenPID(void)
{
	lptmr_pulse_clean();
	
	PIT_TCTRL(PID_T_PIT_Tn) &= ~ PIT_TCTRL_TEN_MASK;	//��ֹPITn��ʱ����������ռ���ֵ��
	PIT_TCTRL(PID_T_PIT_Tn) |= PIT_TCTRL_TEN_MASK;		//ʹ�� PITn��ʱ��
}



/****************************************************************
 *���ܣ�	�Ƕȿ���ִ��
 *�βΣ�
 *      	angle:	�Ƕ�
 *���أ�
 *			��
 */
void AngleControl(int16_t angle)
{
	static int32_t AngleLog[3];				//AngleLog[0]Ϊ���νǶ�
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
 * ���ܣ�	ͨ��UART����message
 * �βΣ�
 *      	message:	����Ҫ���͵���Ϣ
 * ���أ�
 *			��
 */
void MessageSend(Message_T message)
{
	uart_putchar (Message_UARTx, 's');			//������ʼ�ַ�
	uart_sendN (Message_UARTx, message.str, MssgStrN);	//������Ϣ�ַ�
}





/****************************************************************
 * ���ܣ�	���������Ҫ���ִ�еĶ���,(�ӿ�)
 * �βΣ�
 *      	OutputData��	���������Ϣ
 * ���أ�
 *			��
 */
void OutputControl(OutputData_T OutputData)
{
	static uint8_t flag = 0;
	
	if(OutputData.OffPID == 0)		//����pid����
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












/********************************************************����Ϊ������ж�*************************************************/

/************************************************************************
 *���ܣ�	pit�жϺ�������ʱ�ж���ִ��pid����
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
 void PID_PIT_ISR(void)
{
	int16_t power;		//��¼pid�����������
	
	if((PIT_TFLG(PID_T_PIT_Tn) &= PIT_TFLG_TIF_MASK) != 0)	//pid
	{
		PIT_Flag_Clear(PID_T_PIT_Tn);

		power = (int16_t)PID_DigitalController((float)InterruptExpextPID, ReadSpeedBack(), ParamPID);
		PowerMotor(power);
		//DisplayDebug[2].num = InterruptExpextPID;
	}
}
