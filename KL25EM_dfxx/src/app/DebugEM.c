/*
 *�ļ���	DebugEM.c
 *Ŀ�ģ�	������oled�����ڵȵ��Թ��ܵ�ʵ��
 *	      
 */

#include "DebugEM.h"


static struct
{
	uint8_t flag;		//�л���־
	uint8_t interval;	//��������
}ButtenDisplay = {0, 10};	//���һ����ʾ�͵����Ĳ���������

DisplayDebug_T DisplayDebug[8] = {{"1:", 0}, {"2:", 0}, {"5:", 0}, {"6:", 0}, {"3:", 0}, {"4:", 0}, {"angle:", 90}, {"speed:", 0}};		//oled��ʾ����,�����иı��ʼ����ֵ
volatile float ReceiveDebug_UART_Val[26];	//���ڵ��Խ���ֵ�Ĵ洢����



/***********************************************************
 *���ܣ�	��ʼ�����Թ���
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
void InitDebug(void)
{	
	//Initbutten();		//����
	//oled
	enter_critical();
	OLED_Init();
	exit_critical();
	//����
	uart_init(Debug_UARTx, 115200);
	uart_irq_EN(Debug_UARTx);
	
	gpio_Interrupt_init(DEBUG_PIN, GPI_UP_PF, GPI_DISAB);
}


/***********************************************************
 *���ܣ�	��ʼ������
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
void Initbutten(void)
{
	gpio_Interrupt_init(Butten1_PIN, GPI_UP_PF, GPI_INP_FALL);		//������������Դ�˲����½��ش���
	gpio_Interrupt_init(Butten2_PIN, GPI_UP_PF, GPI_INP_FALL);		//������������Դ�˲����½��ش���        
	gpio_Interrupt_init(Butten3_PIN, GPI_UP_PF, GPI_INP_FALL);		//������������Դ�˲����½��ش���
}


/***********************************************************
 *���ܣ�	��OLED����ʾ��Ϣ
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 *˵����	ǰ���м�DisplayDebug[0]��DisplayDebug[6]��ÿ����������Ϣ������ֻ����ʾ�й�ֵ�������ַ�ֻ�������������ڡ�
 *			���һ��ÿ��ֻ����ʾһ����Ϣ�����Ը��ݰ���������ʾ��Ϣ�����������е�ֵ�������ж�������ַ���
 *			���Ե������֣��ֱ�λDisplayDebug[6]��DisplayDbug[7]��ButtenDisplay.interval��
 *			��ǰ�����������Ϣ�����һ��һ����Ϊ������Ϣʹ�á�
 */
void DisplayOLED(void)
{
	OLED_CLS();
	
	OLED_Print_Str(0, 0, DisplayDebug[0].str);	OLED_Print_Num(20, 0, DisplayDebug[0].num);		//ֻ�������������ڵĽ����ַ�
	OLED_Print_Str(63, 0, DisplayDebug[1].str);	OLED_Print_Num(85, 0, DisplayDebug[1].num);
		
	OLED_Print_Str(0, 2, DisplayDebug[2].str);	OLED_Print_Num(20, 2, DisplayDebug[2].num);
	OLED_Print_Str(63, 2, DisplayDebug[3].str);	OLED_Print_Num(85, 2, DisplayDebug[3].num);
		
	OLED_Print_Str(0, 4, DisplayDebug[4].str);	OLED_Print_Num(20, 4, DisplayDebug[4].num);
	OLED_Print_Str(63, 4, DisplayDebug[5].str);	OLED_Print_Num(85, 4, DisplayDebug[5].num);
	
	switch(ButtenDisplay.flag)
	{
	case 0:
		OLED_Print_Str(0, 6, DisplayDebug[6].str);	OLED_Print_Num(85, 6, DisplayDebug[6].num);		//���һ�п����ж�������ַ�
		break;
	case 1:
		OLED_Print_Str(0, 6, DisplayDebug[7].str);	OLED_Print_Num(85, 6, DisplayDebug[7].num);
		break;
	case 2:
		OLED_Print_Str(0, 6, "interval:");	OLED_Print_Num(85, 6, ButtenDisplay.interval);	//���������Ĳ���
		break;
	default:
		;
	}
}





/**************************************************************************************
 *���ܣ�	����Ӧ�����ʽ���ַ���ת��Ϊ����ֵ
 *�βΣ�
 *      	str:	�ַ�����ַ
 *			len:	�ַ�������
 *���أ�
 *      	RceiveFP:	ת��������
 *˵����	�ַ����������c���Ա�׼�����ʽ����-123.456
 */
UART_RceiveFP_T str2fp(uint8_t str[], uint8_t len)
{
	UART_RceiveFP_T RceiveFP;				//���㸡��ֵʱ�Ľṹ����
	
	//��ʼ��״̬
	RceiveFP.N = 0;							//����
	RceiveFP.divrsor = 1;					//��������Ϊ1
	RceiveFP.PlaceFP = len;					//�޸���
	RceiveFP.PartI = 0;						//��ʼΪ0
	//�����ܵ����ַ����������������������ֵ����¼
	for(uint8_t i = 0; i < len; i++)
	{
		if(str[i] == '-')
			RceiveFP.N = 1;
		else if(str[i] == '+')
			RceiveFP.N = 0;
		else if(str[i] == '.')
			RceiveFP.PlaceFP = i;
		else
			RceiveFP.PartI = RceiveFP.PartI * 10 + str[i] - '0';
	}
	//�������ε�����ĳ�������
	for(uint8_t i = RceiveFP.PlaceFP + 1; i < len; i++)
	{
		RceiveFP.divrsor *= 10;
	}
	
	//��������ֵ�����ʵ�ʸ���ֵ
	if(RceiveFP.N == 0)
		RceiveFP.result = (float)RceiveFP.PartI / RceiveFP.divrsor;
	else
		RceiveFP.result = -(float)RceiveFP.PartI / RceiveFP.divrsor;
	
	return RceiveFP;
}





/*****************************************�ж�************************************************/

/*********************************************************************
 *���ܣ�	����1�Ĺ���ʵ�֣��л�oled���һ�е���ʾ��Ϣ
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
void Butten1_IO_ISR()
{
	if(gpio_get(Butten1_PIN) == TurnOn)
	{
		ClosePID();
		Dly_ms(10);
		if(gpio_get(Butten1_PIN) == TurnOn)
		{
			if(++ButtenDisplay.flag == 3)
			{
				ButtenDisplay.flag = 0;
			}
		}
		OpenPID();
	}
}


/*******************************************************************************************
 *���ܣ�	����2�Ĺ���ʵ�֣�����oled���һ�е�ֵ��DisplayDebug[6].num��DisplayDebug[6].numÿ��
 *			����ButtenDisplay.interval����ButtenDisplay.intervalÿ������1��
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
 void Butten2_IO_ISR()
{
	if(gpio_get(Butten2_PIN) == TurnOn)
	{
		ClosePID();
		Dly_ms(10);
		if(gpio_get(Butten2_PIN) == TurnOn)
		{
			switch(ButtenDisplay.flag)
			{
			case 0:
				DisplayDebug[6].num += ButtenDisplay.interval;
				break;
			case 1:
				DisplayDebug[7].num += ButtenDisplay.interval;
				break;
			case 2:
				ButtenDisplay.interval += 1;
				break;
			default:
				;
			}
		}
		OpenPID();
	}
}

/************************************************************************************************
 *���ܣ�	����2�Ĺ���ʵ�֣���Сoled���һ�е�ֵ��DisplayDebug[6].num��DisplayDebug[6].numÿ��
 *			��СButtenDisplay.interval����ButtenDisplay.intervalÿ�μ�С1��
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
 void Butten3_IO_ISR()
{
	if(gpio_get(Butten3_PIN) == TurnOn)
	{
		ClosePID();
		Dly_ms(10);
		if(gpio_get(Butten3_PIN) == TurnOn)
		{
			switch(ButtenDisplay.flag)
			{
			case 0:
				DisplayDebug[6].num -= ButtenDisplay.interval;
				break;
			case 1:
				DisplayDebug[7].num -= ButtenDisplay.interval;
				break;
			case 2:
				ButtenDisplay.interval -= 1;
				break;
			default:
				;
			}
		}
		OpenPID();
	}
}
/**************************************************************************************
 *���ܣ�	UART�жϽ���������Ϣ������
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 *˵����	����ʶ������26����Ϣ��
 *			��ʽ��	<ֵ><��ʾ>������<ֵ>�����⸡����ʽ���ַ����У������c���Ա�׼�����ʽ,<��ʾ>Ϊa��z�������ִ�Сд����Ӣ����ĸ��
 *					һ����ʾ��ӦΪһ����������������-0.123f������-0.123�洢��ReceiveDebug_ART_Val[F]֮�С�
 *					�����׺Ϊ#�Ļ�����������档���Ҫһ�����������������ر����printf�Ľ�������
 */
void ReceiveDebug_UART_ISR()
{
	static uint8_t StrLog[UART_LengthMaxFP + 1], index;		//���յ����ַ����Լ��±�ļ�¼����1����Ϊprintf��Ҫ������־'\0'��
	uint8_t temp;											//������ʱ�洢���յ����ַ�
	UART_RceiveFP_T RceiveFP;								//���㸡��ֵʱ�Ľṹ����

	temp = uart_getchar (Debug_UARTx);
	//���յ��ַ���Χ�޶�
	if(((temp >= '0' && temp <= '9') || temp == '+' || temp == '-' || temp == '.') && index < UART_LengthMaxFP)			//��¼
		StrLog[index++] = temp;
	else if((temp >= 'a' && temp <= 'z') || (temp >= 'A' && temp <= 'Z') || temp == '#')	//������־
	{
		RceiveFP = str2fp(StrLog, index);		//ת��
		switch(temp)
		{
		case 'a':
		case 'A':
			ReceiveDebug_UART_Val[A] = RceiveFP.result;
			break;
		case 'b':
		case 'B':
			ReceiveDebug_UART_Val[B] = RceiveFP.result;
			break;
		case 'c':
		case 'C':
			ReceiveDebug_UART_Val[C] = RceiveFP.result;
			break;
		case 'd':
		case 'D':
			ReceiveDebug_UART_Val[D] = RceiveFP.result;
			break;
		case 'e':
		case 'E':
			ReceiveDebug_UART_Val[E] = RceiveFP.result;
			break;
		case 'f':
		case 'F':
			ReceiveDebug_UART_Val[F] = RceiveFP.result;
			break;
		case 'g':
		case 'G':
			ReceiveDebug_UART_Val[G] = RceiveFP.result;
			break;
		case 'h':
		case 'H':
			ReceiveDebug_UART_Val[H] = RceiveFP.result;
			break;
		case 'i':
		case 'I':
			ReceiveDebug_UART_Val[I] = RceiveFP.result;
			break;
		case 'j':
		case 'J':
			ReceiveDebug_UART_Val[J] = RceiveFP.result;
			break;
		case 'k':
		case 'K':
			ReceiveDebug_UART_Val[K] = RceiveFP.result;
			break;
		case 'l':
		case 'L':
			ReceiveDebug_UART_Val[L] = RceiveFP.result;
			break;
		case 'm':
		case 'M':
			ReceiveDebug_UART_Val[M] = RceiveFP.result;
			break;
		case 'n':
		case 'N':
			ReceiveDebug_UART_Val[N] = RceiveFP.result;
			break;
		case 'o':
		case 'O':
			ReceiveDebug_UART_Val[O] = RceiveFP.result;
			break;
		case 'p':
		case 'P':
			ReceiveDebug_UART_Val[P] = RceiveFP.result;
			break;
		case 'q':
		case 'Q':
			ReceiveDebug_UART_Val[Q] = RceiveFP.result;
			break;
		case 'r':
		case 'R':
			ReceiveDebug_UART_Val[R] = RceiveFP.result;
			break;
		case 's':
		case 'S':
			ReceiveDebug_UART_Val[S] = RceiveFP.result;
			break;
		case 't':
		case 'T':
			ReceiveDebug_UART_Val[T] = RceiveFP.result;
			break;
		case 'u':
		case 'U':
			ReceiveDebug_UART_Val[U] = RceiveFP.result;
			break;
		case 'v':
		case 'V':
			ReceiveDebug_UART_Val[V] = RceiveFP.result;
			break;
		case 'w':
		case 'W':
			ReceiveDebug_UART_Val[W] = RceiveFP.result;
			break;
		case 'x':
		case 'X':
			ReceiveDebug_UART_Val[X] = RceiveFP.result;
			break;
		case 'y':
		case 'Y':
			ReceiveDebug_UART_Val[Y] = RceiveFP.result;
			break;
		case 'z':
		case 'Z':
			ReceiveDebug_UART_Val[Z] = RceiveFP.result;
			break;
		case '#':
			break;
		default:
			;
		}
		StrLog[index] = '\0';
		index = 0;			//��λ
		if(temp == '#')
		{
			printf("�������ɹ�\n");
		}
		else
		{
			if(RceiveFP.N == 0)
				printf("����%cΪ%s\n", temp, StrLog);
			else
				printf("����%cΪ%s\n", temp, StrLog);
		}
	}
}

