/********************************************************************************
 * �ļ���:	isr.h
 * Ŀ��:	���º궨���жϺţ���ӳ���ж�����������жϺ�����ַ��
 *          ʹ��ָ����������жϷ�������
 * ���棺	ֻ����"vectors.c"���������ұ�����"vectors.h"�����ĺ��棡����
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
 *���ܣ�PIT�ж�����
 *�βΣ�
 *      ��
 *���أ�
 *      ��
 */
void PIT_ISR(void);


/***********************************************************
 *���ܣ�PTA�ж�����
 *�βΣ�
 *      ��
 *���أ�
 *      ��
 */
void PTA_ISR();



/***********************************************************
 *���ܣ�PTD�ж�����
 *�βΣ�
 *      ��
 *���أ�
 *      ��
 */
void PTD_ISR();




#endif /*__ISR_H*/