/*
 *�ļ���	InitEM.c
 *Ŀ�ģ�	����ģ��ĳ�ʼ��
 *
 *���̣�
 */

#include "InitEM.h"

/****************************************************************
 *���ܣ���ʼ��
 *�βΣ�
 *			��
 *���أ�
 *			��
 */
void InitEM(void)
{	
	InitCollection();
	InitControl();
	InitDebug();
	InitSimulatTimer();
}