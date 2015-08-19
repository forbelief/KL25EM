/*
 *文件：	SimulatTimer.h
 *目的：	实现一个毫秒模拟定时器
 *
 */

#ifndef _SIMULATTIMER_H_
#define _SIMULATTIMER_H_

#include "pit.h"


#define SimulatTimerMsCountN	8	//模拟定时器的个数


typedef struct
{
	uint_32 count;	//定时器计数值
	uint_32 cmr;	//比较寄存器
	struct
	{
		uint_8 ten : 1;		//定时器使能标志，1：使能，
		uint_8 tov : 1;		//溢出标志
		uint_8 tfc : 1;		//自由运行标志
		uint_8 tcf : 1;		//比较标志
	}flag;
}SimulatTimerMs_T;

typedef enum
{
	compare,
	NoCompare
}SimulatTimerMsMode_T;





/***********************************************************
 *功能：	初始化实现模拟定时器所需的pit定时器，基准定时1ms
 *形参：
 *      	无
 *返回：
 *      	无
 */
void InitSimulatTimer();





/***********************************************************
 *功能：	初始化一个给定编号的模拟定时器
 *形参：
 *      	n:						定时器编号。
 *			SimulatTimerMsMode：	定时模式
 *			cmr_ms：				定时器比较值，单位ms，在非比较模式时可以为任意
 *返回：
 *			0：		正常
 *			~0：	异常，模拟定时器已打开或不存在
 */
uint_8 InitSimulatTimerMs(uint_8 n, SimulatTimerMsMode_T SimulatTimerMsMode, uint_32 cmr_ms);




/***********************************************************
 *功能：	关闭模拟定时器n
 *形参：
 *      	n：	定时器编号
 *返回：
 *      	无
 */
void SimulatTimerMsClose(uint_8 n);



/***********************************************************
 *功能：	查询模拟定时器的tcf位，返回，如果为一则清零
 *形参：
 *      	n：	定时器编号
 *返回：
 *      	0:	未过比较值
 *			1：	已过比较值
 */
uint_8 SimulatTimerMs_tcf(uint_8 n);




/***********************************************************
 *功能：	查询模拟定时器的tov位，返回，如果为一则清零
 *形参：
 *			n：	定时器编号
 *返回：
 *			0:	未溢出
 *			1：	已溢出
 */
uint_8 SimulatTimerMs_tov(uint_8 n);




/***********************************************************
 *功能：	返回模拟定时值
 *形参：
 *			n：								定时器编号
 *返回：
 *			SimulatTimerMsVal[n].count：	模拟定时寄存器当前值
 */
uint_32 GetSimulatTimerMs_count(uint_8 n);



/*********************************************中断***************************************/

/***********************************************************
 *功能：	利用pit定时中断，模拟N路定时器，定时间隔1ms
 *形参：
 *			无
 *返回：
 *			无
 */
void SimulatTimerMsF_PIT_ISR();





#endif /* _SIMULATTIMER_H_ */