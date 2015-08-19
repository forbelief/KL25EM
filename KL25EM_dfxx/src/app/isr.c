/********************************************************************************
 * 文件名:	isr.c
 * 目的：	主要是将共用一个中断向量的中断源的对应函数包装起来
 * 
 *
 */

#include "isr.h"


/***********************************************************
 *功能：PIT中断向量
 *形参：
 *      无
 *返回：
 *      无
 */
void PIT_ISR(void)
{
	PID_PIT_ISR();
	SimulatTimerMsF_PIT_ISR();
}


/***********************************************************
 *功能：PTA中断向量
 *形参：
 *      无
 *返回：
 *      无
 */
void PTA_ISR()
{
	PORT_FUNC(A, PlaceF_PIN, PlaceF_PTA_ISR);
	//PORT_FUNC(A, Butten1_PIN, Butten1_IO_ISR);
	//PORT_FUNC(A, Butten2_PIN, Butten2_IO_ISR);
	//PORT_FUNC(A, Butten3_PIN, Butten3_IO_ISR);
}

/***********************************************************
 *功能：PTD中断向量
 *形参：
 *      无
 *返回：
 *      无
 */
void PTD_ISR()
{
	printf("\n****没有使用\n");
}