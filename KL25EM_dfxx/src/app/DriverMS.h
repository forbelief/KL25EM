/*
 *�ļ���	DriverMS.h
 *Ŀ�ģ�	����Ͷ���ı�׼���ӿڵ�ʵ�֡�
 *
 *���̣�
 */
 
#ifndef _DRIVERMS_H_
#define _DRIVERMS_H_
 
#include "include.h"
#include "DebugEM.h"
#include "setup.h"

//���
#define RangePower  100								//����������ֵ
#define MotorFreqPWM  10000							//���PWMƵ��
#define MotorDownValid  (-RangePower * 95 / 100)	//���������С��Чֵ,(-0.95 * RangeSpeed)
#define MotorUpValid  (RangePower * 95 / 100)		//������������Чֵ,(0.95 * RangeSpeed)


//���
#define RangeAngle  180									//����Ƕ����ֵ
#define ServoFreqPWM  300								//���PWMƵ��
#define ServoDownValid  (RangeAngle * 30 / 180)			//����Ƕ���С��Чֵ
#define ServoUpValid  (RangeAngle * 150 / 180)			//����Ƕ������Чֵ
#define Angle2HightTime(x)  ((500. + (2500.- 500.) * (float)(x) / RangeAngle) / 1000. / 1000.)		//x������ĽǶȡ����ʽ���Ϊx��Ӧ�ĸߵ�ƽʱ�䣬�����ʵ��������





/****************************************************************
 *���ܣ�	��ʼ��������������
 *�βΣ�
 *			��
 *���أ�
 *			��
 */
void InitMotor();




/****************************************************************
 *���ܣ�	��ʼ��������������
 *�βΣ�
 *			��
 *���أ�
 *			��
 */
void InitServo();



/****************************************************************
 *���ܣ�	���õ���Ĺ���
 *�βΣ�
 *			power��	����
 *���أ�
 *			��
 */
void PowerMotor(int16_t power);




/****************************************************************
 *���ܣ�	���ö���ĽǶ�
 *�βΣ�
 *			angle��	�Ƕ�
 *���أ�
 *			��
 */
void AngleServo(int16_t angle);









#endif /* _DRIVERMS_H_ */