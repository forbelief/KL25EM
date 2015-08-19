/*
 *文件：	DataProcessing.h
 *目的：	数据处理模块的输入信号是数据采集模块中的所有采集到的信息。所需完成的工作有：
 *        		根据各种开关量决定程序走向。
 *        		根据道路信息，建立适当的模型得出当前理想的，所需达到的角度，速度。
 *        		角度的计算根据AD值求出偏移值，再到车子相对于赛道的斜率，再将斜率转化为角度。速度根据角度确定。
 *流程：	先写由AD得到速度，角度关系，然后根据其它信息确定最终的程序走向。
 */
 
 
#ifndef _DATAPROCESSING_H_
#define _DATAPROCESSING_H_

#include "DataCollection.h"
#include "DebugEM.h"
#include "setup.h"
#include "DriverMS.h"
#include "SimulatTimer.h"
#include <math.h>


#define X_LengthMM  200		//x方向传感器的距离，单位mm。
#define Y_LengthMM  180		//y方向小车到传感器中心的距离，单位mm。

#define PI  3.14
 
#define DistanceMinCM 50	//两车之间的最小距离，单位cm
#define DistanceMaxCM 70	//两车的最大距离，单位cm


 
 typedef struct
{
	int_16 speed;	//速度
	uint_16 angle;	//角度
	uint8_t OffPID;	//是否关闭pid
	Message_T message;	//要发送的信息
}OutputData_T;		//数据处理结果的类型

 typedef struct
{
	float x;		//输入
	float y;		//输出
}DispersePoint_T;	//平面离散点类型
 

/****************************************************************
 *功能：	对AD的信息进行处理，得到赛道中线偏离小车中线的横向距离。
 *形参：
 *			ResultAD：	AD结果地址
 *返回：
 *			coords：	一维坐标值
 */
int16_t ResultAD2XY(ResultAD_T ResultAD[]);





/********************************************************************************************************
 *功能：	对AD的信息进行处理，得到车子姿态所具有的中线与赛道中线所形成的夹角关系，角度制和绝对值方式表示
 *形参：
 * 			ResultAD：  AD结果地址
 *返回：
 *			PoseEttor： 姿态修正值
 */
int16_t  ResultAD2PoseError(ResultAD_T ResultAD[]);




 
/****************************************************************
 *功能：	对AD值进行判断，得到赛道需要转向的角度。
 *形参：
 *		ResultAD：	AD结果
 *返回：
 *		degree：		角度
 */
int_16 XY2Angle(ResultAD_T ResultAD[]);



/**************************************************************************************************************
 *功能：	根据输入的离散的点，确定一条折线，并且对一个折线定义域内的值，求出其值域中对应的值
 *形参：	
 *			DispersePoint:	确定折线的一些离散的点的地址
 *			NumPoint：		点的数目
 *			input:			折线定义域中的一个值
 *返回：
 *			output:			值域对应输出,如果输入不在定义域内，则返回值域内第一个值
 *说明：	输入的离散点是按定义域从小往大排列的，第一个和最后一个决定了定义域范围
 */
float PolylineModel(DispersePoint_T DispersePoint[], uint8_t NumPoint, float input);



/****************************************************************
 *功能：	根据角度得到最合适的速度
 *形参：
 *		angle：	角度
 *		GearFn:	速度选择
 *返回：
 *		speed：	速度
 */
int16_t Angle2Speed(uint16_t angle, uint8_t GearFn);





/****************************************************************
 *功能：	根据车子现在的状态，确定要发送到另外一个小车的信息
 *形参：
 *			DataEM：	采集的信息
 *			OutputData：	处理后的信息
 *返回：
 *			message：	要发送的信息
 */
 Message_T MessageGenerate(DataEM_T DataEM, OutputData_T OutputData);
 
 



/****************************************************************
 *功能：	通过PlaceF信号来确定RunF信号
 *形参：
 *			flag：标志
 *返回：
 *			temp：	经过启停点的次数
 */
uint8_t Place2Run(Flag_T flag);





/****************************************************************
 *功能：	终极大审判
 *形参：
 *			OutputData_P:输出控制结果
 *返回：
 *			OutputData：控制信息
 */
OutputData_T DataProcessing(DataEM_T DataEM);
 
 
 







#endif /* _DATAPROCESSING_H_ */
