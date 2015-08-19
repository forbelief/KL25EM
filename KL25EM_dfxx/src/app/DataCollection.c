/*
 *文件：	DataCollection.h
 *目的：	数据采集模块进行对外界的信号收集，并进行适当的处理。
 *
 */

#include "DataCollection.h"

#define TPM_SC_TOF_FLAG(TPMx)  ((TPM_SC_REG(TPMx) & TPM_SC_TOF_MASK) >> TPM_SC_TOF_SHIFT)		//查询PMx的溢出中断标志
#define TPM_CnSC_CHF_FLAG(TPMx, TPM_CHn)  ((TPM_CnSC_REG(TPMx,TPM_CHn) & TPM_CnSC_CHF_MASK) >> TPM_CnSC_CHF_SHIFT)	//查询PMx_CHn的通道中断标志
#define TPM_SC_TOF_CLEAR(TPMx)  (TPM_SC_REG(TPMx) |= TPM_SC_TOF_MASK)		//清除TPMx的溢出中断标志，写一清零
#define TPM_CnSC_CHF_CLEAR(TPMx, TPM_CHn)  (TPM_CnSC_REG(TPMx,TPM_CHn) |= TPM_CnSC_CHF_MASK)		//清除TPMx_CHn的通道中断标志


static volatile uint8_t StrSerial[MssgStrN] = {"00000000000"};	//从StrSerial[0]依次为速度（3个字符，地位占低序号），角度（3个字符），距离（3个字符）， RunF（1个字符），位置的确定（1字符）,低字节在前
static volatile uint32_t DistanceCountTPM = 0;					//距离计数
static volatile uint8_t PlaceFnInterrupte = 0;					//位置计数

static const TPM_MemMapPtr TPMx_PP[3] = {TPM0_BASE_PTR, TPM1_BASE_PTR, TPM2_BASE_PTR};		//定义三个指针数组保存 TPMx_PP 的地址

/***********************************************************
 *功能：	初始化采集各种数据所需的设置
 *形参：
 *      	无
 *返回：
 *      	无
 */
void InitCollection(void)
{
	InitFlag(); 
	InitAD();
#ifdef CAR_BACK //后车安装超声波传感器接收模块
	InitDistance();
#endif /* CAR_BACK */
	InitMessage();
}


/***********************************************************
 *功能：	初始化标志io
 *形参：
 *      	无
 *返回：
 *      	无
 */
void InitFlag()
{
	/***********io初始化,输入上拉，带无源滤波器,不允许中断***************/
	gpio_Interrupt_init(RunF_PIN, GPI_UP_PF, GPI_DISAB);
	gpio_Interrupt_init(PlaceF_PIN, GPI_UP_PF, GPI_INP_RING);
	gpio_Interrupt_init(NormalF_PIN, GPI_UP_PF, GPI_DISAB);
	gpio_Interrupt_init(GearF1_PIN, GPI_UP_PF, GPI_DISAB);
	gpio_Interrupt_init(GearF2_PIN, GPI_UP_PF, GPI_DISAB);
	gpio_Interrupt_init(GearF3_PIN, GPI_UP_PF, GPI_DISAB);
	
	disable_irq (PortA_irq_no);
}

/***********************************************************
 *功能：	初始化AD转换
 *形参：
 *      	无
 *返回：
 *      	无
 */
void InitAD(void)
{
	adc_init(ResultAD1_ADC0_CHn);
	adc_init(ResultAD2_ADC0_CHn);
	adc_init(ResultAD3_ADC0_CHn);
	adc_init(ResultAD4_ADC0_CHn);
	adc_init(ResultAD5_ADC0_CHn);
	adc_init(ResultAD6_ADC0_CHn);
}

/***********************************************************
 *功能：	初始化UART通讯的接收功能，使能中断
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：	发送同时也已初始化
 */
void InitMessage(void)
{
	uart_init (Message_UARTx, 115200);
	uart_irq_EN(Message_UARTx);
}




/************************************************************************************
 *功能：	初始化超声波传感器接收模块
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：	通过EXTRG_IN 的上升沿触发TPM开始计数，利用输入捕捉在下降沿的时候记录计数值并进入中断
 *			来返回计数值，即高脉冲的持续时间，如果溢出则判定为超出范围。
 */
void InitDistance(void)
{
	/***************超声波传感器初始化，tpm，io******************/
	//设置时钟和管脚功能
	tpm_port_mux(DistanceDO_TPMx, DistanceDO_TPM_CHn);
	
	//时钟：24MHz。（所有的TPM模块的时钟来源一样，设置一次即可）
	SIM_SOPT2 &= ~ SIM_SOPT2_TPMSRC_MASK;
	SIM_SOPT2 |= SIM_SOPT2_TPMSRC(1);        //00 Clock disabled  01 MCGFLLCLK clock, or MCGPLLCLK/2  10 OSCERCLK clock   11 MCGIRCLK clock
	SIM_SOPT2 |= SIM_SOPT2_PLLFLLSEL_MASK;
  
	TPM_CnSC_REG(TPMx_PP[DistanceDO_TPMx], DistanceDO_TPM_CHn) =(0
                                                                   | TPM_CnSC_CHIE_MASK   //使能通道中断
                                                                   | TPM_CnSC_ELSB_MASK   //设置模式：下降沿输入捕捉
                                                                );
	TPM_CONF_REG(TPMx_PP[DistanceDO_TPMx]) = (0
                                                | TPM_CONF_TRGSEL(0)     //设置外部管脚 EXTRG_IN 触发
                                                | TPM_CONF_CSOO_MASK     // 设置溢出时停止计数
                                                | TPM_CONF_CSOT_MASK     //设置为触发使能模式
                                             );
	
	TPM_SC_REG(TPMx_PP[DistanceDO_TPMx]) = ( 0
                                               | TPM_SC_TOIE_MASK              //使能溢出中断
                                               | TPM_SC_PS(7)             //分频因子，分频系数 = 2^PS，溢出周期 = 2^16 * 128 / 24MHz = 21.84ms
                                               | TPM_SC_CMOD(1)          //使能计数器，但不会开始计数
                                           );
	
	
	TPM_MOD_REG(TPMx_PP[DistanceDO_TPMx])   = ((uint64_t)DistanceMax_CM * (core_clk_mhz * 1000 * 1000 >> 1 >> 7)) / 340 / 100;  //模数 = 最大距离 / 声速 * TPM计数器分频后的频率
	TPM_CNT_REG(TPMx_PP[DistanceDO_TPMx])   = 0;                          //计数器。只有低16位可用（写任何值到此寄存器，都会清0）
	port_init(DistanceTrigger_EXTRG_IN_PIN, ALT3);  //选择外部触发的管脚
  
	gpio_Interrupt_init(DistanceState_PIN, GPI_DOWN, GPI_DISAB);	//暂不使用
	
	TPM_Enable_int(DistanceDO_TPMx);
	
	//DisplayDebug[1].num = TPM_MOD_REG(TPMx_PP[DistanceDO_TPMx]);
}




/***********************************************************
 *功能：	采集io标志类信息并存储
 *形参：
 *      	Flag_P：	控制标志的存储位置
 *返回：
 *      	无
 */
void FlagCollection(Flag_T *Flag_P)
{
	Flag_P->RunF = gpio_get(RunF_PIN);		//开始运行信号
	Flag_P->PlaceF = gpio_get(PlaceF_PIN);		//启停点信号，干簧管，标志是否经过起始/停止位置
	Flag_P->NormalF = gpio_get(NormalF_PIN);	//采集参考值信号，置位表示采集参考值
	Flag_P->GearF1 = gpio_get(GearF1_PIN);		//速度选择信号
	Flag_P->GearF2 = gpio_get(GearF2_PIN);
	Flag_P->GearF3 = gpio_get(GearF3_PIN);
	
	Flag_P->PlaceFn = PlaceFnInterrupte;
	Flag_P->GearFn = ((Flag_P->GearF1 == TurnOn ? 1 : 0) << 0) + ((Flag_P->GearF2 == TurnOn ? 1 : 0) << 1) +  ((Flag_P->GearF3 == TurnOn ? 1 : 0) << 2);	//速度选择
}


/***********************************************************
 *功能：	通过AD采集电磁传感器的参考值
 *形参：
 *      	ResultAD_P：	AD结果存储地址
 *返回：
 *      	无
 */
void NormalV_Collection(ResultAD_T *ResultAD_P)
{
	ResultAD_P[0].RealV = adc_ave(ResultAD1_ADC0_CHn , ADC_12bit, 16);
	ResultAD_P[1].RealV = adc_ave(ResultAD2_ADC0_CHn , ADC_12bit, 16);
	ResultAD_P[2].RealV = adc_ave(ResultAD3_ADC0_CHn , ADC_12bit, 16);
	ResultAD_P[3].RealV = adc_ave(ResultAD4_ADC0_CHn , ADC_12bit, 16);
	ResultAD_P[4].RealV = adc_ave(ResultAD5_ADC0_CHn , ADC_12bit, 16);
	ResultAD_P[5].RealV = adc_ave(ResultAD6_ADC0_CHn , ADC_12bit, 16);
	for(uint8_t i = 0; i < 6; i++)
	{
		if(ResultAD_P[i].RealV > ResultAD_P[i].max && ResultAD_P[i].RealV < 4000)
			ResultAD_P[i].max = ResultAD_P[i].RealV;
		else if(ResultAD_P[i].RealV < ResultAD_P[i].min)
			//ResultAD_P[i].min = ResultAD_P[i].RealV;
			ResultAD_P[i].min = 900;
		else
			;
	}
}



/***********************************************************
 *功能：通过AD采集电磁传感器的信息，并进行归一化
 *形参：
 *      ResultAD_P：AD结果存储地址
 *返回：
 *      无
 */
void AD_Collection(ResultAD_T *ResultAD_P)
{
	ResultAD_P[0].RealV = adc_ave(ResultAD1_ADC0_CHn , ADC_12bit, 3);
	ResultAD_P[1].RealV = adc_ave(ResultAD2_ADC0_CHn , ADC_12bit, 3);
	ResultAD_P[2].RealV = adc_ave(ResultAD3_ADC0_CHn , ADC_12bit, 3);
	ResultAD_P[3].RealV = adc_ave(ResultAD4_ADC0_CHn , ADC_12bit, 3);
	ResultAD_P[4].RealV = adc_ave(ResultAD5_ADC0_CHn , ADC_12bit, 3);
	ResultAD_P[5].RealV = adc_ave(ResultAD6_ADC0_CHn , ADC_12bit, 3);
  
	for(uint8_t i = 0; i < 6; i++)
	{
		if(ResultAD_P[i].RealV > ResultAD_P[i].max)
			ResultAD_P[i].NormalV = NormalRangeAD;
		else if(ResultAD_P[i].RealV < ResultAD_P[i].min)
			ResultAD_P[i].NormalV = 0;
		else
			ResultAD_P[i].NormalV = ((uint32_t)ResultAD_P[i].RealV - ResultAD_P[i].min) * NormalRangeAD / (ResultAD_P[i].max - ResultAD_P[i].min);
	}
	///***********************************************
	DisplayDebug[0].num = ResultAD_P[0].RealV;
	DisplayDebug[1].num = ResultAD_P[1].RealV;
	DisplayDebug[2].num = ResultAD_P[4].RealV;
	DisplayDebug[3].num = ResultAD_P[5].RealV;
	DisplayDebug[4].num = ResultAD_P[2].RealV;
	DisplayDebug[5].num = ResultAD_P[3].RealV;
	//************************************************/
}


/***********************************************************
 *功能：	驱动超声波传感器并记录信息，后车用
 *形参：
 *      	Distance_P：	两车的距离信息存储地址,单位cm
 *返回：
 *      	无
 */
void DistanceCollection(uint16_t *Distance_P)
{
	uint32_t clk_hz;
  
	clk_hz = (core_clk_mhz * 1000 * 1000) >> 1 ; // pll频率 / 2
	if(DistanceCountTPM != 0)
	{
		*Distance_P = DistanceCountTPM * 340 * 100 / (clk_hz >> 7);		//距离 = 计数值 / 计数器分频后的频率 * 声速
	}
	else
	{
		*Distance_P = DistanceMax_CM;
	}
	
	//DisplayDebug[0].num = *Distance_P;
}


/***********************************************************
 *功能：	接收UART通讯的信息
 *形参：
 *      	Message_P:通讯的信息储存地址
 *返回：
 *      	无
 */
void MessageCollection(Message_T *Message_P)
{ 
	uint8_t temp = 0;

	temp = UART1_S1;	//清除溢出标志
	temp = UART1_D;
	for(temp = 0; temp < MssgStrN; temp++)
		Message_P->str[temp] = StrSerial[temp];
	
	Message_P->speed = (Message_P->str[0] - '0') + (Message_P->str[1] - '0') * 10 + (Message_P->str[2] - '0') * 100;
	Message_P->angle = (Message_P->str[3] - '0') + (Message_P->str[4] - '0') * 10 + (Message_P->str[5] - '0') * 100;
#ifdef CAR_FRONT	//只有前车会接收距离信息
	Message_P->distance = (Message_P->str[6] - '0') + (Message_P->str[7] - '0') * 10 + (Message_P->str[8] - '0') * 100;
#endif /* CAR_FRONT */
	//因为RunF标志比较重要，因此，采取的是一种比较稳定的编码方式，用'a'代表0，'z'代表1
	if(Message_P->str[9] == 'a')
		Message_P->RunF = TurnOff;
	else if(Message_P->str[9] == 'z')
		Message_P->RunF = TurnOn;
	else
	{}
	Message_P->PlaceFn = Message_P->str[10] - '0';		//速度档位消息
	
}


/************************************************************************
 *功能：	对各种信息的采集适当组合，并包装。外模块主要调用这个函数实现功能
 *形参：
 *      	DataEM_P:	数据采集阶段的数据集合的地址
 *返回：
 *      	无
 */
void DataCollection(DataEM_T *DataEM_P)
{
	FlagCollection(&(DataEM_P->flag));
	
	while(DataEM_P->flag.NormalF == TurnOn && DataEM_P->flag.RunF == TurnOff)		//当采集标志为TurnOn，运行标志为TurnOff时，进行AD参考值的采集
	{
		ClosePID();
		//初始值确定
		for(uint i = 0; i < 6; i++)
		{
			DataEM_P->ResultAD[i].max = 0;
			DataEM_P->ResultAD[i].min = 4000;
		}
		while(DataEM_P->flag.NormalF == TurnOn && DataEM_P->flag.RunF == TurnOff)	
		{
			NormalV_Collection((DataEM_P->ResultAD));
			FlagCollection(&(DataEM_P->flag));
		}
		OpenPID();
	}
#ifdef CAR_BACK
	DistanceCollection(&(DataEM_P->distance));
#endif /* CAR_BACK */
	AD_Collection(DataEM_P->ResultAD);
	MessageCollection(&(DataEM_P->message));
}


/***********************************************以下为所用中断************************************************/

/************************************************************************
 * 功能：	io中断函数
 * 形参：
 *      	无
 * 返回：
 *      	无
 */
void PlaceF_PTA_ISR(void)
{
	//
	disable_irq (PortA_irq_no);
	for(int32_t i = 0; i < 500; i++);		//0.5ms延时滤波
	if(gpio_get(PlaceF_PIN) == TurnOn)
	{
		if(PlaceFnInterrupte++ > 8)
		{
			PlaceFnInterrupte = 0;
		}
	}
	enable_irq (PortA_irq_no);
}






/************************************************************************
 * 功能：	UART串口接受中断函数
 * 形参：
 *      	无
 * 返回：
 *      	无
 */
 void MessageUART_ISR()
{
	static uint8_t index = 0;
	uint8_t temp;
	uint8_t fp;
	
	temp = uart_pendchar(Message_UARTx, &fp);
	
	if(temp == 's')				//起始标志
	{
		index = 0;
	}
	else if(index < MssgStrN)		//正常长度
	{
		StrSerial[index++] = temp;
	}
	else
		;
}


/************************************************************************
 *功能：	tpm中断函数，读取计算超声波传感器的反馈，后车用
 *形参：
 *      	无
 *返回：
 *      	无
 */
 void MessageTPM2_ISR()
{
	if(TPM_SC_TOF_FLAG(TPMx_PP[DistanceDO_TPMx]) == 1)//是否有溢出
	{
		TPM_SC_TOF_CLEAR(TPMx_PP[DistanceDO_TPMx]); 
		DistanceCountTPM = 0;//0表明超出范围
	}
	else if(TPM_CnSC_CHF_FLAG(TPMx_PP[DistanceDO_TPMx], DistanceDO_TPM_CHn) == 1)//通道捕捉事件是否发生
	{
		DistanceCountTPM = TPM_CnV_REG(TPMx_PP[DistanceDO_TPMx], DistanceDO_TPM_CHn);//读取计数值
    
		TPM_CnSC_CHF_CLEAR(TPMx_PP[DistanceDO_TPMx], DistanceDO_TPM_CHn);

		TPM_SC_REG(TPMx_PP[DistanceDO_TPMx]) &= ~TPM_SC_CMOD_MASK;	//关闭计数器
		TPM_SC_REG(TPMx_PP[DistanceDO_TPMx]) |=TPM_SC_CMOD(1);		//重新使能，等待触发
		TPM_CNT_REG(TPMx_PP[DistanceDO_TPMx]) = 0;					//清计数器值
	}
	else
	{
	
	}
}

