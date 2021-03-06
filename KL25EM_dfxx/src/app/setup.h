/*
 * 文件：setup.h
 * 目的：设置各个模块所用到的片内外设的模块号，通道号，管脚号。
 *
 */

#ifndef _SETUP_H_
#define _SETUP_H_

/*****************************宏定义符号*******************************/
#define CAR_BACK		//CAR_BACK		CAR_FRONT		前后车选择
#define OSCILLATO_50		//OSCILLATO_50		OSCILLATO_8		晶振选择
#define MOTOR_DRIVER_2		//MOTOR_DRIVER_1	MOTOR_DRIVER_2		电机驱动选择


/*****************************io控制标志检测*******************************/
/***************************************************************
PTA4,PTA5,PTA16,PTA17.		有中断
PTD3,PTD4,PTD5,PTD6,PTD7.	有中断，有拨码开关
PTE20,PTE23,PTE30.		有自锁和拨码开关，
****************************************************************/

#define RunF_PIN      PTE20
#define PlaceF_PIN    PTA17
#define NormalF_PIN   PTE23
#define GearF1_PIN    PTD3
#define GearF2_PIN    PTD5
#define GearF3_PIN    PTD4

#define DEBUG_PIN   PTE30



/*****************************AD*******************************/
#define ResultAD1_ADC0_CHn  ADC0_SE12// PTB2
#define ResultAD2_ADC0_CHn  ADC0_SE9 // PTB1
#define ResultAD3_ADC0_CHn  ADC0_SE13// PTB3
#define ResultAD4_ADC0_CHn  ADC0_SE14 // PTC0
#define ResultAD5_ADC0_CHn  ADC0_SE11 // PTC2
#define ResultAD6_ADC0_CHn  ADC0_SE15  // PTC1


/*****************************UART通讯*******************************/
#define Message_UARTx  UART1



/*****************************超声波测距*******************************/
#define DistanceDO_TPMx			TPM2
#define DistanceDO_TPM_CHn		TPM_CH0		//PTB18
#define DistanceTrigger_EXTRG_IN_PIN	PTB8  		//PTB8,PTC0,PTC6  ,TPM的触发信号输入管脚

#define DistanceState_PIN  PTB9


/*****************************电机*******************************/
#define MotorPositive_TPMx      TPM1
#define MotorPositive_TPM_CHn   TPM_CH0//PTA12
#define MotorNegative_TPMx      TPM1
#define MotorNegative_TPM_CHn   TPM_CH1//PTA13



/*****************************舵机*******************************/
#define Servo_TPMx        TPM0
#define Servo_TPMx_CHn    TPM_CH0//PTE24


/*****************************PID*******************************/
#define PID_T_PIT_Tn   PIT0
#define PID_Counter_LPT_CHn   LPT0_ALT2     //PTC5 ，LPT0_ALT1    PTA19



/*************************************模拟定时器*****************************/
#define SimulatTimer_PIT_Tn		PIT1


/***************************************调试************************************/
/***************************************************************
PTA4,PTA5,PTA16,PTA17.		有中断
PTD3,PTD4,PTD5,PTD6,PTD7.	有中断，有拨码开关
PTE20,PTE23,PTE30.		有自锁和拨码开关，
****************************************************************/
#define Butten1_PIN		PTA16
#define Butten2_PIN		PTA4
#define Butten3_PIN		PTA5

#define Debug_UARTx		UART0




#endif /*_SETUP_H_*/
