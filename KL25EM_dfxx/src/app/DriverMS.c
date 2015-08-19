/*
 *文件：DriverMS.c
 *目的：电机和舵机的标准化接口的实现。
 *
 *流程：
 */
 
#include "DriverMS.h"

static uint16_t MotorPositivePrecison, MotorNegativePrecison;	//电机的控制进度
static uint16_t ServoPrecison;									//舵机的控制精度




/****************************************************************
 *功能：初始化电机的外设控制
 *形参：
 *			无
 *返回：
 *			无
 */
void InitMotor()
{
	uint16_t DutyCyclePositive, DutyCycleNegative;  //暂存正反通道的占空比，在这儿不是必须的，是为了和下面格式统一而已

	switch(MotorPositive_TPMx)                //选择占空比的分母
	{
	case TPM0:
		MotorPositivePrecison = TPM0_PRECISON;
		break;
	case TPM1:
		MotorPositivePrecison = TPM1_PRECISON;
		break;
	case TPM2:
		MotorPositivePrecison = TPM2_PRECISON;
		break;
	default:
		break;
	}
	switch(MotorNegative_TPMx)                //选择占空比的分母
	{
	case TPM0:
		MotorNegativePrecison = TPM0_PRECISON;
		break;
	case TPM1:
	  MotorNegativePrecison = TPM1_PRECISON;
	  break;
	case TPM2:
	  MotorNegativePrecison = TPM2_PRECISON;
	  break;
	default:
		break;
	}
#ifdef MOTOR_DRIVER_1		//不同驱动
	DutyCyclePositive = 0 * MotorPositivePrecison / RangePower;
	DutyCycleNegative = 0 * MotorNegativePrecison / RangePower;
	TPM_PWM_init(MotorPositive_TPMx, MotorPositive_TPM_CHn, MotorFreqPWM, DutyCyclePositive);	//初始化TPM 的PWM 功能，速度0
	TPM_PWM_init(MotorNegative_TPMx, MotorNegative_TPM_CHn, MotorFreqPWM, DutyCycleNegative);	//初始化TPM 的PWM 功能，速度0
#endif /* MOTOR_DRIVER_1 */
#ifdef MOTOR_DRIVER_2
	DutyCyclePositive = (0 + RangePower) * MotorPositivePrecison / (RangePower + RangePower);	//计算power所对应的占空比
	TPM_PWM_init(MotorPositive_TPMx, MotorPositive_TPM_CHn, MotorFreqPWM, DutyCyclePositive);	//初始化TPM 的PWM 功能，速度0	
#endif /* MOTOR_DRIVER_2 */
}


/****************************************************************
 *功能：	初始化舵机的外设控制
 *形参：
 *			无
 *返回：
 *			无
 */
void InitServo()
{
	uint16_t DutyCycle;		//暂存通道的占空比，在这儿不是必须的，是为了和下面格式统一而已
  
	switch(Servo_TPMx)		//选择占空比的分母
	{
	case TPM0:
		ServoPrecison = TPM0_PRECISON;
		break;
	case TPM1:
		ServoPrecison = TPM1_PRECISON;
		break;
	case TPM2:
		ServoPrecison = TPM2_PRECISON;
		break;
	default:
		break;
	}
  
	DutyCycle = (uint16_t)(Angle2HightTime(RangeAngle / 2) * (float)ServoFreqPWM * (float)ServoPrecison);
	TPM_PWM_init(Servo_TPMx, Servo_TPMx_CHn, ServoFreqPWM, DutyCycle);   //初始化TPM 的PWM 功能，90度正中
  
}

/****************************************************************
 *功能：	设置电机的功率
 *形参：
 *			power：	功率
 *返回：
 *			无
 */
void PowerMotor(int16_t power)
{
	uint16_t PowerPositive, PowerNegative;			//暂存正反通道对应的功率值
	uint16_t DutyCyclePositive, DutyCycleNegative;	//暂存正反通道的占空比
	static int16_t PowerLog;						//记录电机当前的功率值
  
	//功率参数限制
	if(power > MotorUpValid)
		power = MotorUpValid;
	else if(power < MotorDownValid)
		power = MotorDownValid;
   

	//功率改变时PWM输出改变
	if(power != PowerLog)
	{
#ifdef MOTOR_DRIVER_1		//不同驱动
		if(power >= 0)
		{
			PowerPositive = power;
			PowerNegative = 0;
		}
		else
		{
			PowerPositive = 0;
			PowerNegative = power;
		}
		DutyCyclePositive = PowerPositive * MotorPositivePrecison / RangePower;		//计算power所对应的占空比
		DutyCycleNegative = PowerNegative * MotorNegativePrecison / RangePower;
		TPM_PWM_Duty(MotorPositive_TPMx, MotorPositive_TPM_CHn, DutyCyclePositive);	//设置TPM 的PWM 通道占空比
		TPM_PWM_Duty(MotorNegative_TPMx, MotorNegative_TPM_CHn, DutyCycleNegative);
#endif /* MOTOR_DRIVER_1 */
#ifdef MOTOR_DRIVER_2
		DutyCyclePositive = (-power + RangePower) * MotorPositivePrecison / (RangePower + RangePower);	//计算power所对应的占空比
		TPM_PWM_Duty(MotorPositive_TPMx, MotorPositive_TPM_CHn, DutyCyclePositive);			//设置TPM 的PWM 通道占空比
		
#endif /* MOTOR_DRIVER_2 */
		PowerLog = power;			//记录当前功率
	}
}

/****************************************************************
 *功能：	设置舵机的角度
 *形参：
 *			angle：	角度
 *返回：
 *			无
 */
void AngleServo(int16_t angle)
{
	uint16_t DutyCycle;				//暂存通道的占空比
	static int16_t AngleLog;		//记录舵机当前的角度值
  
	//角度参数限制
	if(angle > ServoUpValid)
		angle = ServoUpValid;
	else if(angle < ServoDownValid)
		angle = ServoDownValid;

	//角度改变时PWM输出改变
	if(angle != AngleLog)
	{
		AngleLog = angle;			//记录当前角度
  
//前车角度修正   
#ifdef CAR_FRONT
		angle = RangeAngle - (angle - 3);
#endif /* CAR_FRONT */
//后车角度修正
#ifdef CAR_BACK
		angle = RangeAngle - (angle - 0);
#endif /* CAR_BACK */
	
		DutyCycle = (uint16_t)(Angle2HightTime(angle) * (float)ServoFreqPWM * (float)ServoPrecison);	//计算angle所对应的占空比
		TPM_PWM_Duty(Servo_TPMx, Servo_TPMx_CHn, DutyCycle);		 //设置TPM 的PWM 通道占空比  
	}
}
