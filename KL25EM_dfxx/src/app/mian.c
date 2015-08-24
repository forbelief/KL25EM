/********************************************************************
 *�ļ���	mian.c
 *Ŀ�ģ�	���ø���̨������ִ�и�ģ�������
 *
 *���̣�	��ʼ����Ȼ������ݲɼ������ݴ������ִ�н���ѭ��
 */

#include "include.h"
#include "DataCollection.h"
#include "DataProcessing.h"
#include "OutputControl.h"  
#include "DriverMS.h"
#include "DebugEM.h"
#include "SimulatTimer.h"
#include "InitEM.h"




void main()
{
	DataEM_T DataEM;
	OutputData_T OutputData;
	

	InitEM();								//��ʼ������ģ��
	
	InitSimulatTimerMs(0, compare, 3);		//����������ʱִ���õ�ģ�ⶨʱ��
	InitSimulatTimerMs(1, compare, 200);	//����oled��ʱ��ʾ�õ�ģ�ⶨʱ��
	
	for(uint8_t i = 0; i < 6; i++)			//��AD�ο�ֵ�ٶ�һ��ֵ����������ɼ��Ļ�����ʱ���ֶ����ڴ�������
	{
		DataEM.ResultAD[i].max = 3500;
		DataEM.ResultAD[i].min = 900;
	}
	
	while(1)
	{
		if(SimulatTimerMs_tcf(0) == 1)
		{
			DataCollection(&DataEM);
			OutputData = DataProcessing(DataEM);
			OutputControl(OutputData);
		}
		if(SimulatTimerMs_tcf(1) == 1)
		{
			DisplayOLED();
		}
	}
}
