/*
 * 文件：	SimulatTimer.c
 * 目的：	实现一个毫秒模拟定时器
 * 备注：   会占用额外的执行时间，根据效率和实际需求来衡量是否选择这个功能
 */

#include "SimulatTimer.h"





static volatile SimulatTimerMs_T SimulatTimerMsVal[SimulatTimerMsCountN];	//模拟定时器的硬件寄存器


/***********************************************************
 *功能：	初始化实现模拟定时器所需的pit定时器，基准定时1ms
 *形参：
 *			无
 *返回：
 *			无
 */
void InitSimulatTimer(void)
{
	uint32_t cnt;
  
	cnt = bus_clk_khz * 1u;
	pit_init(SimulatTimer_PIT_Tn, cnt);	//1ms基准周期定时
}




/***********************************************************
 *功能：	初始化一个给定编号的模拟定时器
 *形参：
 *			n:						定时器编号。
 *			SimulatTimerMsMode：	定时模式
 *			cmr_ms：				定时器比较值，单位ms，在非比较模式时可以为任意
 *返回：
 *			0：		正常
 *			~0：	异常，模拟定时器已打开或不存在
 */
uint_8 InitSimulatTimerMs(uint_8 n, SimulatTimerMsMode_T SimulatTimerMsMode, uint_32 cmr_ms)
{
	if(SimulatTimerMsVal[n].flag.ten == 1 && n >= SimulatTimerMsCountN)		//模拟定时器已打开或不存在，返回错误
		return ~0;
	SimulatTimerMsVal[n].flag.ten = 1;
	switch(SimulatTimerMsMode)
	{
	case compare:	//置比较位
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
 *功能：	关闭模拟定时器n
 *形参：
 *			n：	定时器编号
 *返回：
 *			无
 */
void SimulatTimerMsClose(uint_8 n)
{
	SimulatTimerMsVal[n].flag.ten = 0;
}


/***********************************************************
 *功能：	查询模拟定时器的tcf位，返回，如果为一则清零
 *形参：
 *			n：	定时器编号
 *返回：
 *			0:	未过比较值
 *			1：	已过比较值
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
 *功能：	查询模拟定时器的tov位，返回，如果为一则清零
 *形参：
 *			n：	定时器编号
 *返回：
 *			0:	未溢出
 *			1：	已溢出
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
 *功能：	返回模拟定时值
 *形参：
 *			n：				定时器编号
 *返回：
 *			SimulatTimerMsVal[n].count：	模拟定时寄存器当前值
 */
uint_32 GetSimulatTimerMs_count(uint_8 n)
{
	return SimulatTimerMsVal[n].count;
}




/*********************************************中断***************************************/

/***********************************************************
 *功能：	利用pit定时中断，模拟N路定时器，定时间隔1ms
 *形参：
 *			无
 *返回：
 *			无
 */
void SimulatTimerMsF_PIT_ISR()
{
	uint_8 i;
	
	if((PIT_TFLG(SimulatTimer_PIT_Tn) & PIT_TFLG_TIF_MASK) != 0)
	{
		PIT_Flag_Clear(SimulatTimer_PIT_Tn);
		for(i = 0; i < SimulatTimerMsCountN; i++)
		{
			if(SimulatTimerMsVal[i] . flag.ten == 1)	//使能
			{
				if(++ SimulatTimerMsVal[i].count == 0)	//溢出
				{
					SimulatTimerMsVal[i].flag.tov = 1;
				}
	                
				if(SimulatTimerMsVal[i].flag.tfc == 1)	//比较
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
