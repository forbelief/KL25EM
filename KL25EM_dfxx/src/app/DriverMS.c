/*
 *�ļ���DriverMS.c
 *Ŀ�ģ�����Ͷ���ı�׼���ӿڵ�ʵ�֡�
 *
 *���̣�
 */
 
#include "DriverMS.h"

static uint16_t MotorPositivePrecison, MotorNegativePrecison;	//����Ŀ��ƽ���
static uint16_t ServoPrecison;									//����Ŀ��ƾ���




/****************************************************************
 *���ܣ���ʼ��������������
 *�βΣ�
 *			��
 *���أ�
 *			��
 */
void InitMotor()
{
	uint16_t DutyCyclePositive, DutyCycleNegative;  //�ݴ�����ͨ����ռ�ձȣ���������Ǳ���ģ���Ϊ�˺������ʽͳһ����

	switch(MotorPositive_TPMx)                //ѡ��ռ�ձȵķ�ĸ
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
	switch(MotorNegative_TPMx)                //ѡ��ռ�ձȵķ�ĸ
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
#ifdef MOTOR_DRIVER_1		//��ͬ����
	DutyCyclePositive = 0 * MotorPositivePrecison / RangePower;
	DutyCycleNegative = 0 * MotorNegativePrecison / RangePower;
	TPM_PWM_init(MotorPositive_TPMx, MotorPositive_TPM_CHn, MotorFreqPWM, DutyCyclePositive);	//��ʼ��TPM ��PWM ���ܣ��ٶ�0
	TPM_PWM_init(MotorNegative_TPMx, MotorNegative_TPM_CHn, MotorFreqPWM, DutyCycleNegative);	//��ʼ��TPM ��PWM ���ܣ��ٶ�0
#endif /* MOTOR_DRIVER_1 */
#ifdef MOTOR_DRIVER_2
	DutyCyclePositive = (0 + RangePower) * MotorPositivePrecison / (RangePower + RangePower);	//����power����Ӧ��ռ�ձ�
	TPM_PWM_init(MotorPositive_TPMx, MotorPositive_TPM_CHn, MotorFreqPWM, DutyCyclePositive);	//��ʼ��TPM ��PWM ���ܣ��ٶ�0	
#endif /* MOTOR_DRIVER_2 */
}


/****************************************************************
 *���ܣ�	��ʼ��������������
 *�βΣ�
 *			��
 *���أ�
 *			��
 */
void InitServo()
{
	uint16_t DutyCycle;		//�ݴ�ͨ����ռ�ձȣ���������Ǳ���ģ���Ϊ�˺������ʽͳһ����
  
	switch(Servo_TPMx)		//ѡ��ռ�ձȵķ�ĸ
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
	TPM_PWM_init(Servo_TPMx, Servo_TPMx_CHn, ServoFreqPWM, DutyCycle);   //��ʼ��TPM ��PWM ���ܣ�90������
  
}

/****************************************************************
 *���ܣ�	���õ���Ĺ���
 *�βΣ�
 *			power��	����
 *���أ�
 *			��
 */
void PowerMotor(int16_t power)
{
	uint16_t PowerPositive, PowerNegative;			//�ݴ�����ͨ����Ӧ�Ĺ���ֵ
	uint16_t DutyCyclePositive, DutyCycleNegative;	//�ݴ�����ͨ����ռ�ձ�
	static int16_t PowerLog;						//��¼�����ǰ�Ĺ���ֵ
  
	//���ʲ�������
	if(power > MotorUpValid)
		power = MotorUpValid;
	else if(power < MotorDownValid)
		power = MotorDownValid;
   

	//���ʸı�ʱPWM����ı�
	if(power != PowerLog)
	{
#ifdef MOTOR_DRIVER_1		//��ͬ����
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
		DutyCyclePositive = PowerPositive * MotorPositivePrecison / RangePower;		//����power����Ӧ��ռ�ձ�
		DutyCycleNegative = PowerNegative * MotorNegativePrecison / RangePower;
		TPM_PWM_Duty(MotorPositive_TPMx, MotorPositive_TPM_CHn, DutyCyclePositive);	//����TPM ��PWM ͨ��ռ�ձ�
		TPM_PWM_Duty(MotorNegative_TPMx, MotorNegative_TPM_CHn, DutyCycleNegative);
#endif /* MOTOR_DRIVER_1 */
#ifdef MOTOR_DRIVER_2
		DutyCyclePositive = (-power + RangePower) * MotorPositivePrecison / (RangePower + RangePower);	//����power����Ӧ��ռ�ձ�
		TPM_PWM_Duty(MotorPositive_TPMx, MotorPositive_TPM_CHn, DutyCyclePositive);			//����TPM ��PWM ͨ��ռ�ձ�
		
#endif /* MOTOR_DRIVER_2 */
		PowerLog = power;			//��¼��ǰ����
	}
}

/****************************************************************
 *���ܣ�	���ö���ĽǶ�
 *�βΣ�
 *			angle��	�Ƕ�
 *���أ�
 *			��
 */
void AngleServo(int16_t angle)
{
	uint16_t DutyCycle;				//�ݴ�ͨ����ռ�ձ�
	static int16_t AngleLog;		//��¼�����ǰ�ĽǶ�ֵ
  
	//�ǶȲ�������
	if(angle > ServoUpValid)
		angle = ServoUpValid;
	else if(angle < ServoDownValid)
		angle = ServoDownValid;

	//�Ƕȸı�ʱPWM����ı�
	if(angle != AngleLog)
	{
		AngleLog = angle;			//��¼��ǰ�Ƕ�
  
//ǰ���Ƕ�����   
#ifdef CAR_FRONT
		angle = RangeAngle - (angle - 3);
#endif /* CAR_FRONT */
//�󳵽Ƕ�����
#ifdef CAR_BACK
		angle = RangeAngle - (angle - 0);
#endif /* CAR_BACK */
	
		DutyCycle = (uint16_t)(Angle2HightTime(angle) * (float)ServoFreqPWM * (float)ServoPrecison);	//����angle����Ӧ��ռ�ձ�
		TPM_PWM_Duty(Servo_TPMx, Servo_TPMx_CHn, DutyCycle);		 //����TPM ��PWM ͨ��ռ�ձ�  
	}
}
