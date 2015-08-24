/*
 *�ļ���	DataCollection.h
 *Ŀ�ģ�	���ݲɼ�ģ����ж������ź��ռ����������ʵ��Ĵ���
 *
 */

#include "DataCollection.h"

#define TPM_SC_TOF_FLAG(TPMx)  ((TPM_SC_REG(TPMx) & TPM_SC_TOF_MASK) >> TPM_SC_TOF_SHIFT)		//��ѯPMx������жϱ�־
#define TPM_CnSC_CHF_FLAG(TPMx, TPM_CHn)  ((TPM_CnSC_REG(TPMx,TPM_CHn) & TPM_CnSC_CHF_MASK) >> TPM_CnSC_CHF_SHIFT)	//��ѯPMx_CHn��ͨ���жϱ�־
#define TPM_SC_TOF_CLEAR(TPMx)  (TPM_SC_REG(TPMx) |= TPM_SC_TOF_MASK)		//���TPMx������жϱ�־��дһ����
#define TPM_CnSC_CHF_CLEAR(TPMx, TPM_CHn)  (TPM_CnSC_REG(TPMx,TPM_CHn) |= TPM_CnSC_CHF_MASK)		//���TPMx_CHn��ͨ���жϱ�־


static volatile uint8_t StrSerial[MssgStrN] = {"00000000000"};	//��StrSerial[0]����Ϊ�ٶȣ�3���ַ�����λռ����ţ����Ƕȣ�3���ַ��������루3���ַ����� RunF��1���ַ�����λ�õ�ȷ����1�ַ���,���ֽ���ǰ
static volatile uint32_t DistanceCountTPM = 0;					//�������
static volatile uint8_t PlaceFnInterrupte = 0;					//λ�ü���

static const TPM_MemMapPtr TPMx_PP[3] = {TPM0_BASE_PTR, TPM1_BASE_PTR, TPM2_BASE_PTR};		//��������ָ�����鱣�� TPMx_PP �ĵ�ַ

/***********************************************************
 *���ܣ�	��ʼ���ɼ������������������
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
void InitCollection(void)
{
	InitFlag(); 
	InitAD();
#ifdef CAR_BACK //�󳵰�װ����������������ģ��
	InitDistance();
#endif /* CAR_BACK */
	InitMessage();
}


/***********************************************************
 *���ܣ�	��ʼ����־io
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
void InitFlag()
{
	/***********io��ʼ��,��������������Դ�˲���,�������ж�***************/
	gpio_Interrupt_init(RunF_PIN, GPI_UP_PF, GPI_DISAB);
	gpio_Interrupt_init(PlaceF_PIN, GPI_UP_PF, GPI_INP_RING);
	gpio_Interrupt_init(NormalF_PIN, GPI_UP_PF, GPI_DISAB);
	gpio_Interrupt_init(GearF1_PIN, GPI_UP_PF, GPI_DISAB);
	gpio_Interrupt_init(GearF2_PIN, GPI_UP_PF, GPI_DISAB);
	gpio_Interrupt_init(GearF3_PIN, GPI_UP_PF, GPI_DISAB);
	
	disable_irq (PortA_irq_no);
}

/***********************************************************
 *���ܣ�	��ʼ��ADת��
 *�βΣ�
 *      	��
 *���أ�
 *      	��
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
 *���ܣ�	��ʼ��UARTͨѶ�Ľ��չ��ܣ�ʹ���ж�
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 *˵����	����ͬʱҲ�ѳ�ʼ��
 */
void InitMessage(void)
{
	uart_init (Message_UARTx, 115200);
	uart_irq_EN(Message_UARTx);
}




/************************************************************************************
 *���ܣ�	��ʼ������������������ģ��
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 *˵����	ͨ��EXTRG_IN �������ش���TPM��ʼ�������������벶׽���½��ص�ʱ���¼����ֵ�������ж�
 *			�����ؼ���ֵ����������ĳ���ʱ�䣬���������ж�Ϊ������Χ��
 */
void InitDistance(void)
{
	/***************��������������ʼ����tpm��io******************/
	//����ʱ�Ӻ͹ܽŹ���
	tpm_port_mux(DistanceDO_TPMx, DistanceDO_TPM_CHn);
	
	//ʱ�ӣ�24MHz�������е�TPMģ���ʱ����Դһ��������һ�μ��ɣ�
	SIM_SOPT2 &= ~ SIM_SOPT2_TPMSRC_MASK;
	SIM_SOPT2 |= SIM_SOPT2_TPMSRC(1);        //00 Clock disabled  01 MCGFLLCLK clock, or MCGPLLCLK/2  10 OSCERCLK clock   11 MCGIRCLK clock
	SIM_SOPT2 |= SIM_SOPT2_PLLFLLSEL_MASK;
  
	TPM_CnSC_REG(TPMx_PP[DistanceDO_TPMx], DistanceDO_TPM_CHn) =(0
                                                                   | TPM_CnSC_CHIE_MASK   //ʹ��ͨ���ж�
                                                                   | TPM_CnSC_ELSB_MASK   //����ģʽ���½������벶׽
                                                                );
	TPM_CONF_REG(TPMx_PP[DistanceDO_TPMx]) = (0
                                                | TPM_CONF_TRGSEL(0)     //�����ⲿ�ܽ� EXTRG_IN ����
                                                | TPM_CONF_CSOO_MASK     // �������ʱֹͣ����
                                                | TPM_CONF_CSOT_MASK     //����Ϊ����ʹ��ģʽ
                                             );
	
	TPM_SC_REG(TPMx_PP[DistanceDO_TPMx]) = ( 0
                                               | TPM_SC_TOIE_MASK              //ʹ������ж�
                                               | TPM_SC_PS(7)             //��Ƶ���ӣ���Ƶϵ�� = 2^PS��������� = 2^16 * 128 / 24MHz = 21.84ms
                                               | TPM_SC_CMOD(1)          //ʹ�ܼ������������Ὺʼ����
                                           );
	
	
	TPM_MOD_REG(TPMx_PP[DistanceDO_TPMx])   = ((uint64_t)DistanceMax_CM * (core_clk_mhz * 1000 * 1000 >> 1 >> 7)) / 340 / 100;  //ģ�� = ������ / ���� * TPM��������Ƶ���Ƶ��
	TPM_CNT_REG(TPMx_PP[DistanceDO_TPMx])   = 0;                          //��������ֻ�е�16λ���ã�д�κ�ֵ���˼Ĵ�����������0��
	port_init(DistanceTrigger_EXTRG_IN_PIN, ALT3);  //ѡ���ⲿ�����Ĺܽ�
  
	gpio_Interrupt_init(DistanceState_PIN, GPI_DOWN, GPI_DISAB);	//�ݲ�ʹ��
	
	TPM_Enable_int(DistanceDO_TPMx);
	
	//DisplayDebug[1].num = TPM_MOD_REG(TPMx_PP[DistanceDO_TPMx]);
}




/***********************************************************
 *���ܣ�	�ɼ�io��־����Ϣ���洢
 *�βΣ�
 *      	Flag_P��	���Ʊ�־�Ĵ洢λ��
 *���أ�
 *      	��
 */
void FlagCollection(Flag_T *Flag_P)
{
	Flag_P->RunF = gpio_get(RunF_PIN);		//��ʼ�����ź�
	Flag_P->PlaceF = gpio_get(PlaceF_PIN);		//��ͣ���źţ��ɻɹܣ���־�Ƿ񾭹���ʼ/ֹͣλ��
	Flag_P->NormalF = gpio_get(NormalF_PIN);	//�ɼ��ο�ֵ�źţ���λ��ʾ�ɼ��ο�ֵ
	Flag_P->GearF1 = gpio_get(GearF1_PIN);		//�ٶ�ѡ���ź�
	Flag_P->GearF2 = gpio_get(GearF2_PIN);
	Flag_P->GearF3 = gpio_get(GearF3_PIN);
	
	Flag_P->PlaceFn = PlaceFnInterrupte;
	Flag_P->GearFn = ((Flag_P->GearF1 == TurnOn ? 1 : 0) << 0) + ((Flag_P->GearF2 == TurnOn ? 1 : 0) << 1) +  ((Flag_P->GearF3 == TurnOn ? 1 : 0) << 2);	//�ٶ�ѡ��
}


/***********************************************************
 *���ܣ�	ͨ��AD�ɼ���Ŵ������Ĳο�ֵ
 *�βΣ�
 *      	ResultAD_P��	AD����洢��ַ
 *���أ�
 *      	��
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
 *���ܣ�ͨ��AD�ɼ���Ŵ���������Ϣ�������й�һ��
 *�βΣ�
 *      ResultAD_P��AD����洢��ַ
 *���أ�
 *      ��
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
 *���ܣ�	��������������������¼��Ϣ������
 *�βΣ�
 *      	Distance_P��	�����ľ�����Ϣ�洢��ַ,��λcm
 *���أ�
 *      	��
 */
void DistanceCollection(uint16_t *Distance_P)
{
	uint32_t clk_hz;
  
	clk_hz = (core_clk_mhz * 1000 * 1000) >> 1 ; // pllƵ�� / 2
	if(DistanceCountTPM != 0)
	{
		*Distance_P = DistanceCountTPM * 340 * 100 / (clk_hz >> 7);		//���� = ����ֵ / ��������Ƶ���Ƶ�� * ����
	}
	else
	{
		*Distance_P = DistanceMax_CM;
	}
	
	//DisplayDebug[0].num = *Distance_P;
}


/***********************************************************
 *���ܣ�	����UARTͨѶ����Ϣ
 *�βΣ�
 *      	Message_P:ͨѶ����Ϣ�����ַ
 *���أ�
 *      	��
 */
void MessageCollection(Message_T *Message_P)
{ 
	uint8_t temp = 0;

	temp = UART1_S1;	//��������־
	temp = UART1_D;
	for(temp = 0; temp < MssgStrN; temp++)
		Message_P->str[temp] = StrSerial[temp];
	
	Message_P->speed = (Message_P->str[0] - '0') + (Message_P->str[1] - '0') * 10 + (Message_P->str[2] - '0') * 100;
	Message_P->angle = (Message_P->str[3] - '0') + (Message_P->str[4] - '0') * 10 + (Message_P->str[5] - '0') * 100;
#ifdef CAR_FRONT	//ֻ��ǰ������վ�����Ϣ
	Message_P->distance = (Message_P->str[6] - '0') + (Message_P->str[7] - '0') * 10 + (Message_P->str[8] - '0') * 100;
#endif /* CAR_FRONT */
	//��ΪRunF��־�Ƚ���Ҫ����ˣ���ȡ����һ�ֱȽ��ȶ��ı��뷽ʽ����'a'����0��'z'����1
	if(Message_P->str[9] == 'a')
		Message_P->RunF = TurnOff;
	else if(Message_P->str[9] == 'z')
		Message_P->RunF = TurnOn;
	else
	{}
	Message_P->PlaceFn = Message_P->str[10] - '0';		//�ٶȵ�λ��Ϣ
	
}


/************************************************************************
 *���ܣ�	�Ը�����Ϣ�Ĳɼ��ʵ���ϣ�����װ����ģ����Ҫ�����������ʵ�ֹ���
 *�βΣ�
 *      	DataEM_P:	���ݲɼ��׶ε����ݼ��ϵĵ�ַ
 *���أ�
 *      	��
 */
void DataCollection(DataEM_T *DataEM_P)
{
	FlagCollection(&(DataEM_P->flag));
	
	while(DataEM_P->flag.NormalF == TurnOn && DataEM_P->flag.RunF == TurnOff)		//���ɼ���־ΪTurnOn�����б�־ΪTurnOffʱ������AD�ο�ֵ�Ĳɼ�
	{
		ClosePID();
		//��ʼֵȷ��
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


/***********************************************����Ϊ�����ж�************************************************/

/************************************************************************
 * ���ܣ�	io�жϺ���
 * �βΣ�
 *      	��
 * ���أ�
 *      	��
 */
void PlaceF_PTA_ISR(void)
{
	//
	disable_irq (PortA_irq_no);
	for(int32_t i = 0; i < 500; i++);		//0.5ms��ʱ�˲�
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
 * ���ܣ�	UART���ڽ����жϺ���
 * �βΣ�
 *      	��
 * ���أ�
 *      	��
 */
 void MessageUART_ISR()
{
	static uint8_t index = 0;
	uint8_t temp;
	uint8_t fp;
	
	temp = uart_pendchar(Message_UARTx, &fp);
	
	if(temp == 's')				//��ʼ��־
	{
		index = 0;
	}
	else if(index < MssgStrN)		//��������
	{
		StrSerial[index++] = temp;
	}
	else
		;
}


/************************************************************************
 *���ܣ�	tpm�жϺ�������ȡ���㳬�����������ķ���������
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
 void MessageTPM2_ISR()
{
	if(TPM_SC_TOF_FLAG(TPMx_PP[DistanceDO_TPMx]) == 1)//�Ƿ������
	{
		TPM_SC_TOF_CLEAR(TPMx_PP[DistanceDO_TPMx]); 
		DistanceCountTPM = 0;//0����������Χ
	}
	else if(TPM_CnSC_CHF_FLAG(TPMx_PP[DistanceDO_TPMx], DistanceDO_TPM_CHn) == 1)//ͨ����׽�¼��Ƿ���
	{
		DistanceCountTPM = TPM_CnV_REG(TPMx_PP[DistanceDO_TPMx], DistanceDO_TPM_CHn);//��ȡ����ֵ
    
		TPM_CnSC_CHF_CLEAR(TPMx_PP[DistanceDO_TPMx], DistanceDO_TPM_CHn);

		TPM_SC_REG(TPMx_PP[DistanceDO_TPMx]) &= ~TPM_SC_CMOD_MASK;	//�رռ�����
		TPM_SC_REG(TPMx_PP[DistanceDO_TPMx]) |=TPM_SC_CMOD(1);		//����ʹ�ܣ��ȴ�����
		TPM_CNT_REG(TPMx_PP[DistanceDO_TPMx]) = 0;					//�������ֵ
	}
	else
	{
	
	}
}

