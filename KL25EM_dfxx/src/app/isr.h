/********************************************************************************
 * 文件名:	isr.h
 * 目的:	重新宏定义中断号，重映射中断向量表里的中断函数地址，
 *          使其指向所定义的中断服务函数。
 * 警告：	只能在"vectors.c"包含，而且必须在"vectors.h"包含的后面！！！
 *
 */

#ifndef __ISR_H
#define __ISR_H 

#include "DataCollection.h"
#include "OutputControl.h"
#include "DebugEM.h"
#include "SimulatTimer.h"
#include "OutputControl.h"



//UART0
#ifdef VECTOR_028
#undef VECTOR_028
#define VECTOR_028	ReceiveDebug_UART_ISR
#endif


//UART1
#ifdef VECTOR_029
#undef VECTOR_029
#define VECTOR_029	MessageUART_ISR
#endif


//TPM2
#ifdef VECTOR_035
#undef VECTOR_035
#define VECTOR_035	MessageTPM2_ISR
#endif

//PIT
#ifdef VECTOR_038
#undef VECTOR_038
#define VECTOR_038	PIT_ISR
#endif

//PTA
#ifdef VECTOR_046
#undef VECTOR_046
#define VECTOR_046	PTA_ISR
#endif


//PTD
#ifdef VECTOR_047
#undef VECTOR_047
#define VECTOR_047	PTD_ISR
#endif





/***********************************************************
 *功能：PIT中断向量
 *形参：
 *      无
 *返回：
 *      无
 */
void PIT_ISR(void);


/***********************************************************
 *功能：PTA中断向量
 *形参：
 *      无
 *返回：
 *      无
 */
void PTA_ISR();



/***********************************************************
 *功能：PTD中断向量
 *形参：
 *      无
 *返回：
 *      无
 */
void PTD_ISR();




#endif /*__ISR_H*/