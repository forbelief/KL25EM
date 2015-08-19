/*
 *文件：	DebugEM.c
 *目的：	按键，oled，串口等调试功能的实现
 *	      
 */

#include "DebugEM.h"


static struct
{
	uint8_t flag;		//切换标志
	uint8_t interval;	//调整步距
}ButtenDisplay = {0, 10};	//最后一行显示和调整的参数的类型

DisplayDebug_T DisplayDebug[8] = {{"1:", 0}, {"2:", 0}, {"5:", 0}, {"6:", 0}, {"3:", 0}, {"4:", 0}, {"angle:", 90}, {"speed:", 0}};		//oled显示变量,可另行改变初始化的值
volatile float ReceiveDebug_UART_Val[26];	//串口调试接收值的存储变量



/***********************************************************
 *功能：	初始化调试功能
 *形参：
 *      	无
 *返回：
 *      	无
 */
void InitDebug(void)
{	
	//Initbutten();		//按键
	//oled
	enter_critical();
	OLED_Init();
	exit_critical();
	//串口
	uart_init(Debug_UARTx, 115200);
	uart_irq_EN(Debug_UARTx);
	
	gpio_Interrupt_init(DEBUG_PIN, GPI_UP_PF, GPI_DISAB);
}


/***********************************************************
 *功能：	初始化按键
 *形参：
 *      	无
 *返回：
 *      	无
 */
void Initbutten(void)
{
	gpio_Interrupt_init(Butten1_PIN, GPI_UP_PF, GPI_INP_FALL);		//输入上拉带无源滤波，下降沿触发
	gpio_Interrupt_init(Butten2_PIN, GPI_UP_PF, GPI_INP_FALL);		//输入上拉带无源滤波，下降沿触发        
	gpio_Interrupt_init(Butten3_PIN, GPI_UP_PF, GPI_INP_FALL);		//输入上拉带无源滤波，下降沿触发
}


/***********************************************************
 *功能：	在OLED上显示信息
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：	前三行即DisplayDebug[0]到DisplayDebug[6]，每行有两种信息，仅仅只是显示有关值，解释字符只可以有两个以内。
 *			最后一行每次只可显示一种信息，可以根据按键调整显示信息的种类和其具有的值，可以有多个解释字符。
 *			可以调整三种，分别位DisplayDebug[6]，DisplayDbug[7]和ButtenDisplay.interval。
 *			即前三行是输出信息，最后一行一般作为输入信息使用。
 */
void DisplayOLED(void)
{
	OLED_CLS();
	
	OLED_Print_Str(0, 0, DisplayDebug[0].str);	OLED_Print_Num(20, 0, DisplayDebug[0].num);		//只可以有两个以内的解释字符
	OLED_Print_Str(63, 0, DisplayDebug[1].str);	OLED_Print_Num(85, 0, DisplayDebug[1].num);
		
	OLED_Print_Str(0, 2, DisplayDebug[2].str);	OLED_Print_Num(20, 2, DisplayDebug[2].num);
	OLED_Print_Str(63, 2, DisplayDebug[3].str);	OLED_Print_Num(85, 2, DisplayDebug[3].num);
		
	OLED_Print_Str(0, 4, DisplayDebug[4].str);	OLED_Print_Num(20, 4, DisplayDebug[4].num);
	OLED_Print_Str(63, 4, DisplayDebug[5].str);	OLED_Print_Num(85, 4, DisplayDebug[5].num);
	
	switch(ButtenDisplay.flag)
	{
	case 0:
		OLED_Print_Str(0, 6, DisplayDebug[6].str);	OLED_Print_Num(85, 6, DisplayDebug[6].num);		//最后一行可以有多个解释字符
		break;
	case 1:
		OLED_Print_Str(0, 6, DisplayDebug[7].str);	OLED_Print_Num(85, 6, DisplayDebug[7].num);
		break;
	case 2:
		OLED_Print_Str(0, 6, "interval:");	OLED_Print_Num(85, 6, ButtenDisplay.interval);	//调整增减的步距
		break;
	default:
		;
	}
}





/**************************************************************************************
 *功能：	将对应浮点格式的字符串转化为浮点值
 *形参：
 *      	str:	字符串地址
 *			len:	字符串长度
 *返回：
 *      	RceiveFP:	转换结果相关
 *说明：	字符序列需符合c语言标准浮点格式，如-123.456
 */
UART_RceiveFP_T str2fp(uint8_t str[], uint8_t len)
{
	UART_RceiveFP_T RceiveFP;				//计算浮点值时的结构变量
	
	//初始化状态
	RceiveFP.N = 0;							//正数
	RceiveFP.divrsor = 1;					//除数因子为1
	RceiveFP.PlaceFP = len;					//无浮点
	RceiveFP.PartI = 0;						//初始为0
	//将接受到的字符串分析出浮点变量的特征值并记录
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
	//计算整形到浮点的除数因子
	for(uint8_t i = RceiveFP.PlaceFP + 1; i < len; i++)
	{
		RceiveFP.divrsor *= 10;
	}
	
	//根据特征值计算出实际浮点值
	if(RceiveFP.N == 0)
		RceiveFP.result = (float)RceiveFP.PartI / RceiveFP.divrsor;
	else
		RceiveFP.result = -(float)RceiveFP.PartI / RceiveFP.divrsor;
	
	return RceiveFP;
}





/*****************************************中断************************************************/

/*********************************************************************
 *功能：	按键1的功能实现，切换oled最后一行的显示信息
 *形参：
 *      	无
 *返回：
 *      	无
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
 *功能：	按键2的功能实现，增加oled最后一行的值，DisplayDebug[6].num和DisplayDebug[6].num每次
 *			增加ButtenDisplay.interval，而ButtenDisplay.interval每次增加1。
 *形参：
 *      	无
 *返回：
 *      	无
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
 *功能：	按键2的功能实现，减小oled最后一行的值，DisplayDebug[6].num和DisplayDebug[6].num每次
 *			减小ButtenDisplay.interval，而ButtenDisplay.interval每次减小1。
 *形参：
 *      	无
 *返回：
 *      	无
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
 *功能：	UART中断接收输入信息，调试
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：	共可识别输入26种信息。
 *			格式：	<值><标示>，其中<值>是任意浮点形式的字符序列，需符合c语言标准浮点格式,<标示>为a到z（不区分大小写）的英文字母，
 *					一个标示对应为一个变量，例如输入-0.123f，将把-0.123存储于ReceiveDebug_ART_Val[F]之中。
 *					如果后缀为#的话，将清除缓存。如果要一次性输入多个变量，关闭最后printf的结果输出。
 */
void ReceiveDebug_UART_ISR()
{
	static uint8_t StrLog[UART_LengthMaxFP + 1], index;		//接收到的字符串以及下标的记录，加1是因为printf需要结束标志'\0'。
	uint8_t temp;											//用于临时存储接收到的字符
	UART_RceiveFP_T RceiveFP;								//计算浮点值时的结构变量

	temp = uart_getchar (Debug_UARTx);
	//接收的字符范围限定
	if(((temp >= '0' && temp <= '9') || temp == '+' || temp == '-' || temp == '.') && index < UART_LengthMaxFP)			//记录
		StrLog[index++] = temp;
	else if((temp >= 'a' && temp <= 'z') || (temp >= 'A' && temp <= 'Z') || temp == '#')	//结束标志
	{
		RceiveFP = str2fp(StrLog, index);		//转换
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
		index = 0;			//复位
		if(temp == '#')
		{
			printf("清除缓存成功\n");
		}
		else
		{
			if(RceiveFP.N == 0)
				printf("设置%c为%s\n", temp, StrLog);
			else
				printf("设置%c为%s\n", temp, StrLog);
		}
	}
}

