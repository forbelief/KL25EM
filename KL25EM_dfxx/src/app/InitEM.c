/*
 *文件：	InitEM.c
 *目的：	各个模块的初始化
 *
 *流程：
 */

#include "InitEM.h"

/****************************************************************
 *功能：初始化
 *形参：
 *			无
 *返回：
 *			无
 */
void InitEM(void)
{	
	InitCollection();
	InitControl();
	InitDebug();
	InitSimulatTimer();
}