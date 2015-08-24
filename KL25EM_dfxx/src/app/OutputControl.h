/*
 *文件：	OutputControl.h
 *目的：	输出执行阶段是对数据处理阶段处理结果的执行，包括：
 *				选择合适的控制方法，输出速度，角度到实际。比如PID。
 *				进行无线通讯，对另一个车子报告自身的状态，包括启动/停止信号，速度档位，
 *				速度，角度，还有将超声波传感器的测距值进行共享。如果有必要，可以附
 *				加其他信息，比如道路状况。
 *
 *流程：	速度PID控制。角度一次差分处理。通讯信息转化成字符发送。
 */

#ifndef _OUTPUTCONTROL_H_
#define _OUTPUTCONTROL_H_

#include "DataCollection.h"
#include "DataProcessing.h"
#include "DriverMS.h"
#include "DebugEM.h"
#include "setup.h"


#define PID_T_MS		10			//PID控制周期
#define CountEncodeValid	(500.0 * 105.0 / 40.0)	//车轮转一圈所产生的脉冲数
#define DiameterWheel_CM	5.5			//车轮直径，cm




typedef struct
{
	float Kp_Kp;
	float Ti_Ki;
	float Td_Kd;
	float critical_i;	//积分阀值
	float min;
}ParamPID_T;	//PID参数设置数据类型







/****************************************************************
 *功能：	初始化进行速度PId控制，角度控制，通讯发送所需的设置
 *形参：
 *			无
 *返回：
 *			无
 */
void InitControl(void);


/****************************************************************
 *功能：	初始化进行速度PID控制
 *形参：
 *      	无
 *返回：
 *      	无
 */
void InitSpeedPID(void);


/************************************************************************************
 *功能：	对输入得到其二阶差分后的结果
 *形参：
 *      	ParamDiff：	偏差参数地址，数组下标表示对应的阶数
 *			InputLog:	原始输入，下标0代表本次输入
 *返回：
 *      	result：	加入差分后的输出
 */
int32_t DiffController(int32_t ParamDiff[3], int32_t InputLog[3]);





/****************************************************************
 *功能：	增量式PID控制器算法
 *形参：
 *      	ExpextPID：	PID期望值
 *      	BackPID：	反馈到PID的值
 *			ParamPID：	PID输入参数 
 *返回：
 *			OutPID：	PID控制器输出值
 */
float PID_DigitalController(float ExpectPID, float BackPID, ParamPID_T ParamPID);





/****************************************************************
 *功能：	读取当前实际速度
 *形参：
 *      	无
 *返回：
 *			SpeedBack：	反馈速度，单位cm/s
 */
float ReadSpeedBack(void);


/****************************************************************
 *功能：	关闭PID控制，以防止一些错误发生
 *形参：
 *      	无
 *返回：
 *			无
 */
void ClosePID(void);



/****************************************************************
 *功能：	打开PID控制
 *形参：
 *      	无
 *返回：
 *			无
 */
void OpenPID(void);



/****************************************************************
 *功能：	角度控制执行
 *形参：
 *      	angle:	角度
 *返回：
 *			无
 */
void AngleControl(int16_t angle);




/****************************************************************
 *功能：	通过UART发送message
 *形参：
 *      	Message:	所需要发送的信息
 *返回：
 *			无
 */
void MessageSend(Message_T message);







/****************************************************************
 *功能：	输出所有需要输出执行的动作
 *形参：
 *      	OutputData：	需输出的信息
 *返回：
 *			无
 */
void OutputControl(OutputData_T OutputData);






/********************************************************以下为所需的中断*************************************************/
/************************************************************************
 *功能：	pit中断函数，定时中断以执行pid控制
 *形参：
 *      	无
 *返回：
 *      	无
 */
 void PID_PIT_ISR(void);






#endif /* _OUTPUTCONTROL_H_ */