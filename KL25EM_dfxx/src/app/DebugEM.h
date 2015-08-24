/*
 *�ļ���	DebugEM.h
 *Ŀ�ģ�	������oled�����ڵȵ���ʵ��
 *	      
 */
 
#ifndef _DEBUGEM_H_
#define _DEBUGEM_H_

#include "include.h"
#include  "LandzoOLED.h"


#define TurnOn					0		//�ź���Ч
#define TurnOff					1		//�ź���Ч
#define DisplayStrlenMax			10		//��ʾ�ַ�����󳤶�
#define SwitchDisplay				3		//������������
#define	UART_LengthMaxFP			20		//���ڸ���������󳤶�


typedef struct
{
	uint8 str[DisplayStrlenMax];	//��num�Ľ���
	uint16 num;		//str��Ӧ��ֵ
}DisplayDebug_T;	//oled��ʾ����


typedef enum
{
	A = 0, C, B, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z
}UART_RceiveFlag_T;		//���ڷֱ�UART���յ����ݵı�־

typedef struct
{
	uint8_t N;			//������־,Ϊ1��ʾ������Ϊ0��ʾ����
	uint8_t PlaceFP;	//����λ��
	int32_t PartI;		//���Ը�������α�ʾ
	uint32_t divrsor;	//�ɸ���λ�õõ��ĳ�������
	float result;		//������ʽ�Ľ��
}UART_RceiveFP_T;

extern void ClosePID(void);
extern void OpenPID(void);

extern DisplayDebug_T DisplayDebug[8];	//oled��ʾ����

extern volatile float ReceiveDebug_UART_Val[26];		//���ڵ��Խ���ֵ�Ĵ洢�ñ���

/***********************************************************
 *���ܣ�	��ʼ�����Թ���
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
void InitDebug(void);


/***********************************************************
 *���ܣ�	��ʼ������
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 */
void Initbutten(void);



/***********************************************************
 *���ܣ�	oled��ʾ
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 *˵����
 */
void DisplayOLED();





/**************************************************************************************
 *���ܣ�	����Ӧ�����ʽ���ַ���ת��Ϊ����ֵ
 *�βΣ�
 *      	str:	�ַ�����ַ
 *			len:	�ַ�������
 *���أ�
 *      	RceiveFP:	ת��������
 *˵����	�ַ����������c���Ա�׼�����ʽ����-123.456
 */
UART_RceiveFP_T str2fp(uint8_t str[], uint8_t len);




/******************************************�ж�***************************************/

/***********************************************************
 *���ܣ�	����1��ʵ�֣�io�жϼ��
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 *˵����
 */
void Butten1_IO_ISR();


/***********************************************************
 *���ܣ�	����1��ʵ�֣�io�жϼ��
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 *˵����
 */
void Butten2_IO_ISR();


/***********************************************************
 *���ܣ�	����2��ʵ�֣�io�жϼ��
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 *˵����
 */
void Butten3_IO_ISR();



/***********************************************************
 *���ܣ�	UART�жϽ���������Ϣ������
 *�βΣ�
 *      	��
 *���أ�
 *      	��
 *˵����
 */
void ReceiveDebug_UART_ISR();














#endif /* _DEBUGEM_H_ */
