/********************************************************************
 *文件：	mian.c
 *目的：	调用各后台函数，执行各模块的任务
 *
 *流程：	初始化，然后对数据采集，数据处理，输出执行进行循环
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
	

	InitEM();								//初始化所有模块
	
	InitSimulatTimerMs(0, compare, 3);		//开启主任务定时执行用的模拟定时器
	InitSimulatTimerMs(1, compare, 200);	//开启oled定时显示用的模拟定时器
	
	for(uint8_t i = 0; i < 6; i++)			//给AD参考值假定一个值，（如果不采集的话，此时需手动调节传感器）
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
