/*
 *�ļ���	SimulatTimer.h
 *Ŀ�ģ�	ʵ��һ������ģ�ⶨʱ��
 *
 */

#ifndef _SIMULATTIMER_H_
#define _SIMULATTIMER_H_

#include "pit.h"


#define SimulatTimerMsCountN	8	//ģ�ⶨʱ���ĸ���


typedef struct
{
	uint_32 count;	//��ʱ������ֵ
	uint_32 cmr;	//�ȽϼĴ���
	struct
	{
		uint_8 ten : 1;		//��ʱ��ʹ�ܱ�־��1��ʹ�ܣ�
		uint_8 tov : 1;		//�����־
		uint_8 tfc : 1;		//�������б�־
		uint_8 tcf : 1;		//�Ƚϱ�־
	}flag;
}SimulatTimerMs_T;

typedef enum
{
	compare,
	NoCompare
}SimulatTimerMsMode_T;





/***********************************************************
 *���ܣ�	��ʼ��ʵ��ģ�ⶨʱ�������pit��ʱ������׼��ʱ1ms
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
void InitSimulatTimer();





/***********************************************************
 *���ܣ�	��ʼ��һ��������ŵ�ģ�ⶨʱ��
 *�βΣ�
 *      	n:						��ʱ����š�
 *			SimulatTimerMsMode��	��ʱģʽ
 *			cmr_ms��				��ʱ���Ƚ�ֵ����λms���ڷǱȽ�ģʽʱ����Ϊ����
 *���أ�
 *			0��		����
 *			~0��	�쳣��ģ�ⶨʱ���Ѵ򿪻򲻴���
 */
uint_8 InitSimulatTimerMs(uint_8 n, SimulatTimerMsMode_T SimulatTimerMsMode, uint_32 cmr_ms);




/***********************************************************
 *���ܣ�	�ر�ģ�ⶨʱ��n
 *�βΣ�
 *      	n��	��ʱ�����
 *���أ�
 *      	��
 */
void SimulatTimerMsClose(uint_8 n);



/***********************************************************
 *���ܣ�	��ѯģ�ⶨʱ����tcfλ�����أ����Ϊһ������
 *�βΣ�
 *      	n��	��ʱ�����
 *���أ�
 *      	0:	δ���Ƚ�ֵ
 *			1��	�ѹ��Ƚ�ֵ
 */
uint_8 SimulatTimerMs_tcf(uint_8 n);




/***********************************************************
 *���ܣ�	��ѯģ�ⶨʱ����tovλ�����أ����Ϊһ������
 *�βΣ�
 *			n��	��ʱ�����
 *���أ�
 *			0:	δ���
 *			1��	�����
 */
uint_8 SimulatTimerMs_tov(uint_8 n);




/***********************************************************
 *���ܣ�	����ģ�ⶨʱֵ
 *�βΣ�
 *			n��								��ʱ�����
 *���أ�
 *			SimulatTimerMsVal[n].count��	ģ�ⶨʱ�Ĵ�����ǰֵ
 */
uint_32 GetSimulatTimerMs_count(uint_8 n);



/*********************************************�ж�***************************************/

/***********************************************************
 *���ܣ�	����pit��ʱ�жϣ�ģ��N·��ʱ������ʱ���1ms
 *�βΣ�
 *			��
 *���أ�
 *			��
 */
void SimulatTimerMsF_PIT_ISR();





#endif /* _SIMULATTIMER_H_ */