/*
 *文件：	DriverMS.h
 *目的：	电机和舵机的标准化接口的实现。
 *
 *流程：
 */
 
#ifndef _DRIVERMS_H_
#define _DRIVERMS_H_
 
#include "include.h"
#include "DebugEM.h"
#include "setup.h"

//电机
#define RangePower  100								//电机功率最大值
#define MotorFreqPWM  10000							//电机PWM频率
#define MotorDownValid  (-RangePower * 95 / 100)	//电机功率最小有效值,(-0.95 * RangeSpeed)
#define MotorUpValid  (RangePower * 95 / 100)		//电机功率最大有效值,(0.95 * RangeSpeed)


//舵机
#define RangeAngle  180									//舵机角度最大值
#define ServoFreqPWM  300								//舵机PWM频率
#define ServoDownValid  (RangeAngle * 30 / 180)			//舵机角度最小有效值
#define ServoUpValid  (RangeAngle * 150 / 180)			//舵机角度最大有效值
#define Angle2HightTime(x)  ((500. + (2500.- 500.) * (float)(x) / RangeAngle) / 1000. / 1000.)		//x：舵机的角度。表达式结果为x对应的高电平时间，根据适当舵机调整





/****************************************************************
 *功能：	初始化电机的外设控制
 *形参：
 *			无
 *返回：
 *			无
 */
void InitMotor();




/****************************************************************
 *功能：	初始化舵机的外设控制
 *形参：
 *			无
 *返回：
 *			无
 */
void InitServo();



/****************************************************************
 *功能：	设置电机的功率
 *形参：
 *			power：	功率
 *返回：
 *			无
 */
void PowerMotor(int16_t power);




/****************************************************************
 *功能：	设置舵机的角度
 *形参：
 *			angle：	角度
 *返回：
 *			无
 */
void AngleServo(int16_t angle);









#endif /* _DRIVERMS_H_ */