/*
 *文件：	DebugEM.h
 *目的：	按键，oled，串口等调试实现
 *	      
 */
 
#ifndef _DEBUGEM_H_
#define _DEBUGEM_H_

#include "include.h"
#include  "LandzoOLED.h"


#define TurnOn					0		//信号有效
#define TurnOff					1		//信号无效
#define DisplayStrlenMax			10		//显示字符的最大长度
#define SwitchDisplay				3		//按键调整步距
#define	UART_LengthMaxFP			20		//串口浮点数据最大长度


typedef struct
{
	uint8 str[DisplayStrlenMax];	//对num的解释
	uint16 num;		//str对应的值
}DisplayDebug_T;	//oled显示类型


typedef enum
{
	A = 0, C, B, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z
}UART_RceiveFlag_T;		//用于分辨UART接收的数据的标志

typedef struct
{
	uint8_t N;			//负数标志,为1表示负数，为0表示正数
	uint8_t PlaceFP;	//浮点位置
	int32_t PartI;		//忽略浮点的整形表示
	uint32_t divrsor;	//由浮点位置得到的除数因子
	float result;		//浮点形式的结果
}UART_RceiveFP_T;

extern void ClosePID(void);
extern void OpenPID(void);

extern DisplayDebug_T DisplayDebug[8];	//oled显示变量

extern volatile float ReceiveDebug_UART_Val[26];		//串口调试接收值的存储用变量

/***********************************************************
 *功能：	初始化调试功能
 *形参：
 *      	无
 *返回：
 *      	无
 */
void InitDebug(void);


/***********************************************************
 *功能：	初始化按键
 *形参：
 *      	无
 *返回：
 *      	无
 */
void Initbutten(void);



/***********************************************************
 *功能：	oled显示
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：
 */
void DisplayOLED();





/**************************************************************************************
 *功能：	将对应浮点格式的字符串转化为浮点值
 *形参：
 *      	str:	字符串地址
 *			len:	字符串长度
 *返回：
 *      	RceiveFP:	转换结果相关
 *说明：	字符序列需符合c语言标准浮点格式，如-123.456
 */
UART_RceiveFP_T str2fp(uint8_t str[], uint8_t len);




/******************************************中断***************************************/

/***********************************************************
 *功能：	按键1的实现，io中断检测
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：
 */
void Butten1_IO_ISR();


/***********************************************************
 *功能：	按键1的实现，io中断检测
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：
 */
void Butten2_IO_ISR();


/***********************************************************
 *功能：	按键2的实现，io中断检测
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：
 */
void Butten3_IO_ISR();



/***********************************************************
 *功能：	UART中断接收输入信息，调试
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：
 */
void ReceiveDebug_UART_ISR();














#endif /* _DEBUGEM_H_ */
