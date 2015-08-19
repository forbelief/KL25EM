/*
 *�ļ���	DataProcessing.h
 *Ŀ�ģ�	���ݴ���ģ��������ź������ݲɼ�ģ���е����вɼ�������Ϣ��������ɵĹ����У�
 *        		���ݸ��ֿ�����������������
 *        		���ݵ�·��Ϣ�������ʵ���ģ�͵ó���ǰ����ģ�����ﵽ�ĽǶȣ��ٶȡ�
 *        		�Ƕȵļ������ADֵ���ƫ��ֵ���ٵ����������������б�ʣ��ٽ�б��ת��Ϊ�Ƕȡ��ٶȸ��ݽǶ�ȷ����
 *���̣�	��д��AD�õ��ٶȣ��Ƕȹ�ϵ��Ȼ�����������Ϣȷ�����յĳ�������
 */
 
 
#ifndef _DATAPROCESSING_H_
#define _DATAPROCESSING_H_

#include "DataCollection.h"
#include "DebugEM.h"
#include "setup.h"
#include "DriverMS.h"
#include "SimulatTimer.h"
#include <math.h>


#define X_LengthMM  200		//x���򴫸����ľ��룬��λmm��
#define Y_LengthMM  180		//y����С�������������ĵľ��룬��λmm��

#define PI  3.14
 
#define DistanceMinCM 50	//����֮�����С���룬��λcm
#define DistanceMaxCM 70	//�����������룬��λcm


 
 typedef struct
{
	int_16 speed;	//�ٶ�
	uint_16 angle;	//�Ƕ�
	uint8_t OffPID;	//�Ƿ�ر�pid
	Message_T message;	//Ҫ���͵���Ϣ
}OutputData_T;		//���ݴ�����������

 typedef struct
{
	float x;		//����
	float y;		//���
}DispersePoint_T;	//ƽ����ɢ������
 

/****************************************************************
 *���ܣ�	��AD����Ϣ���д����õ���������ƫ��С�����ߵĺ�����롣
 *�βΣ�
 *			ResultAD��	AD�����ַ
 *���أ�
 *			coords��	һά����ֵ
 */
int16_t ResultAD2XY(ResultAD_T ResultAD[]);





/********************************************************************************************************
 *���ܣ�	��AD����Ϣ���д����õ�������̬�����е������������������γɵļнǹ�ϵ���Ƕ��ƺ;���ֵ��ʽ��ʾ
 *�βΣ�
 * 			ResultAD��  AD�����ַ
 *���أ�
 *			PoseEttor�� ��̬����ֵ
 */
int16_t  ResultAD2PoseError(ResultAD_T ResultAD[]);




 
/****************************************************************
 *���ܣ�	��ADֵ�����жϣ��õ�������Ҫת��ĽǶȡ�
 *�βΣ�
 *		ResultAD��	AD���
 *���أ�
 *		degree��		�Ƕ�
 */
int_16 XY2Angle(ResultAD_T ResultAD[]);



/**************************************************************************************************************
 *���ܣ�	�����������ɢ�ĵ㣬ȷ��һ�����ߣ����Ҷ�һ�����߶������ڵ�ֵ�������ֵ���ж�Ӧ��ֵ
 *�βΣ�	
 *			DispersePoint:	ȷ�����ߵ�һЩ��ɢ�ĵ�ĵ�ַ
 *			NumPoint��		�����Ŀ
 *			input:			���߶������е�һ��ֵ
 *���أ�
 *			output:			ֵ���Ӧ���,������벻�ڶ������ڣ��򷵻�ֵ���ڵ�һ��ֵ
 *˵����	�������ɢ���ǰ��������С�������еģ���һ�������һ�������˶�����Χ
 */
float PolylineModel(DispersePoint_T DispersePoint[], uint8_t NumPoint, float input);



/****************************************************************
 *���ܣ�	���ݽǶȵõ�����ʵ��ٶ�
 *�βΣ�
 *		angle��	�Ƕ�
 *		GearFn:	�ٶ�ѡ��
 *���أ�
 *		speed��	�ٶ�
 */
int16_t Angle2Speed(uint16_t angle, uint8_t GearFn);





/****************************************************************
 *���ܣ�	���ݳ������ڵ�״̬��ȷ��Ҫ���͵�����һ��С������Ϣ
 *�βΣ�
 *			DataEM��	�ɼ�����Ϣ
 *			OutputData��	��������Ϣ
 *���أ�
 *			message��	Ҫ���͵���Ϣ
 */
 Message_T MessageGenerate(DataEM_T DataEM, OutputData_T OutputData);
 
 



/****************************************************************
 *���ܣ�	ͨ��PlaceF�ź���ȷ��RunF�ź�
 *�βΣ�
 *			flag����־
 *���أ�
 *			temp��	������ͣ��Ĵ���
 */
uint8_t Place2Run(Flag_T flag);





/****************************************************************
 *���ܣ�	�ռ�������
 *�βΣ�
 *			OutputData_P:������ƽ��
 *���أ�
 *			OutputData��������Ϣ
 */
OutputData_T DataProcessing(DataEM_T DataEM);
 
 
 







#endif /* _DATAPROCESSING_H_ */
