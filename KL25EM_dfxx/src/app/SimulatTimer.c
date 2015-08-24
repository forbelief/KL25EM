/*
 * �ļ���	SimulatTimer.c
 * Ŀ�ģ�	ʵ��һ������ģ�ⶨʱ��
 * ��ע��   ��ռ�ö����ִ��ʱ�䣬����Ч�ʺ�ʵ�������������Ƿ�ѡ���������
 */

#include "SimulatTimer.h"





static volatile SimulatTimerMs_T SimulatTimerMsVal[SimulatTimerMsCountN];	//ģ�ⶨʱ����Ӳ���Ĵ���


/***********************************************************
 *���ܣ�	��ʼ��ʵ��ģ�ⶨʱ�������pit��ʱ������׼��ʱ1ms
 *�βΣ�
 *			��
 *���أ�
 *			��
 */
void InitSimulatTimer(void)
{
	uint32_t cnt;
  
	cnt = bus_clk_khz * 1u;
	pit_init(SimulatTimer_PIT_Tn, cnt);	//1ms��׼���ڶ�ʱ
}




/***********************************************************
 *���ܣ�	��ʼ��һ��������ŵ�ģ�ⶨʱ��
 *�βΣ�
 *			n:						��ʱ����š�
 *			SimulatTimerMsMode��	��ʱģʽ
 *			cmr_ms��				��ʱ���Ƚ�ֵ����λms���ڷǱȽ�ģʽʱ����Ϊ����
 *���أ�
 *			0��		����
 *			~0��	�쳣��ģ�ⶨʱ���Ѵ򿪻򲻴���
 */
uint_8 InitSimulatTimerMs(uint_8 n, SimulatTimerMsMode_T SimulatTimerMsMode, uint_32 cmr_ms)
{
	if(SimulatTimerMsVal[n].flag.ten == 1 && n >= SimulatTimerMsCountN)		//ģ�ⶨʱ���Ѵ򿪻򲻴��ڣ����ش���
		return ~0;
	SimulatTimerMsVal[n].flag.ten = 1;
	switch(SimulatTimerMsMode)
	{
	case compare:	//�ñȽ�λ
		SimulatTimerMsVal[n].flag.tfc = 1;
		SimulatTimerMsVal[n].cmr = cmr_ms;
		break;
	case NoCompare:
		SimulatTimerMsVal[n].flag.tfc = 0;
		break;
	default:
		;
	}
	return 0;
}


/***********************************************************
 *���ܣ�	�ر�ģ�ⶨʱ��n
 *�βΣ�
 *			n��	��ʱ�����
 *���أ�
 *			��
 */
void SimulatTimerMsClose(uint_8 n)
{
	SimulatTimerMsVal[n].flag.ten = 0;
}


/***********************************************************
 *���ܣ�	��ѯģ�ⶨʱ����tcfλ�����أ����Ϊһ������
 *�βΣ�
 *			n��	��ʱ�����
 *���أ�
 *			0:	δ���Ƚ�ֵ
 *			1��	�ѹ��Ƚ�ֵ
 */
uint_8 SimulatTimerMs_tcf(uint_8 n)
{
	uint_8 temp;
	if(SimulatTimerMsVal[n].flag.tcf == 1)
	{
		SimulatTimerMsVal[n].flag.tcf = 0;
		temp = 1;
	}
	else
		temp = 0;
	return temp;
}


/***********************************************************
 *���ܣ�	��ѯģ�ⶨʱ����tovλ�����أ����Ϊһ������
 *�βΣ�
 *			n��	��ʱ�����
 *���أ�
 *			0:	δ���
 *			1��	�����
 */
uint_8 SimulatTimerMs_tov(uint_8 n)
{
	uint_8 temp;
	
	if(SimulatTimerMsVal[n].flag.tov == 1)
	{
		SimulatTimerMsVal[n].flag.tov = 0;
		temp = 1;
	}
	else
		temp = 0;
	return temp;
}


/***********************************************************
 *���ܣ�	����ģ�ⶨʱֵ
 *�βΣ�
 *			n��				��ʱ�����
 *���أ�
 *			SimulatTimerMsVal[n].count��	ģ�ⶨʱ�Ĵ�����ǰֵ
 */
uint_32 GetSimulatTimerMs_count(uint_8 n)
{
	return SimulatTimerMsVal[n].count;
}




/*********************************************�ж�***************************************/

/***********************************************************
 *���ܣ�	����pit��ʱ�жϣ�ģ��N·��ʱ������ʱ���1ms
 *�βΣ�
 *			��
 *���أ�
 *			��
 */
void SimulatTimerMsF_PIT_ISR()
{
	uint_8 i;
	
	if((PIT_TFLG(SimulatTimer_PIT_Tn) & PIT_TFLG_TIF_MASK) != 0)
	{
		PIT_Flag_Clear(SimulatTimer_PIT_Tn);
		for(i = 0; i < SimulatTimerMsCountN; i++)
		{
			if(SimulatTimerMsVal[i] . flag.ten == 1)	//ʹ��
			{
				if(++ SimulatTimerMsVal[i].count == 0)	//���
				{
					SimulatTimerMsVal[i].flag.tov = 1;
				}
	                
				if(SimulatTimerMsVal[i].flag.tfc == 1)	//�Ƚ�
				{
					if(SimulatTimerMsVal[i].count == SimulatTimerMsVal[i].cmr)
					{
						SimulatTimerMsVal[i].count = 0;
						SimulatTimerMsVal[i].flag.tcf = 1;
					}
				}
			}
		}
	}
}
