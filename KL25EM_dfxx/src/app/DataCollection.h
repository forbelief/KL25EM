/*
 *文件：	DataCollection.h
 *目的：	数据采集模块对外界的信号收集，并进行适当的处理。
 *
 */


#ifndef _DATACOLLECTION_H_
#define _DATACOLLECTION_H_

#include "include.h"
#include "DebugEM.h"
#include "setup.h"


#define TurnOn		0	//信号有效
#define TurnOff		1	//信号无效
#define NormalRangeAD	100	//AD标准化后的值范围
#define DistanceMax_CM  500	//超声波最大距离，不能超过550cm
#define MssgStrN	13	//表示通讯信息的最大长度

typedef struct
{
	uint16_t RunF : 1;	//开始运行信号
	uint16_t PlaceF : 1;	//启停点信号，干簧管，标志是否经过起始/停止位置
	uint16_t NormalF : 1;	//归一化采集信号
	uint16_t GearF1 : 1;	//速度选择信号，最低位
	uint16_t GearF2 : 1;	//速度选择信号，中位
	uint16_t GearF3 : 1;	//速度选择信号，最高位
	uint8_t PlaceFn;		//启停点计数
	uint8_t GearFn;		//速度选择，0~8
}Flag_T;	//控制标志类型定义,以TurnOn代表有效，TurnOff代表无效

typedef struct
{
	uint8_t str[MssgStrN];	//接收时可用于暂存接收值，发送时用于存储要发送的字符串。
	uint8_t RunF;		//开始运行信号
	uint16_t distance;	//距离，前车通过其确定距离
	uint16_t speed;		//速度
	uint16_t angle;		//角度
	uint8_t PlaceFn;		//启停点计数
}Message_T;		//通讯信息类型定义

typedef struct
{
	uint32_t RealV;		//实际转换值
	uint16_t NormalV;	//归一化后的值
	uint16_t max;		//参考最大值
	uint16_t min;		//参考最小值
}ResultAD_T;		//AD转换结果有关的信息类型定义

typedef struct
{
	Flag_T flag;		//控制标志
	uint_16 distance;	//两车距离，后车对其采集赋值
	Message_T message;	//接收到的通讯信息
	ResultAD_T ResultAD[6];	//AD结果
}DataEM_T;		//数据采集阶段的数据集合



/***********************************************************
 *功能：	初始化采集数据所需的设置
 *形参：
 *			无
 *返回：
 *			无
 */
void InitCollection(void);


/***********************************************************
 *功能：	初始化标志io
 *形参：
 *      	无
 *返回：
 *      	无
 */
void InitFlag();



/***********************************************************
 *功能：	初始化AD转换
 *形参：
 *      	无
 *返回：
 *      	无
 */
void InitAD(void);



/***********************************************************
 *功能：	初始化UART通讯的接收功能
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：	发送同时也已初始化
 */
void InitMessage(void);




/***********************************************************
 *功能：	初始化超声波传感器接收模块
 *形参：
 *      	无
 *返回：
 *      	无
 *说明：	通过EXTRG_IN 的上升沿触发TPM开始计数，利用输入捕捉在下降沿的时候记录计值并进入中断
 *			来数返回计数值，即高脉冲的持续时间，如果溢出则判定为超出范围。
 */
void InitDistance(void);


/***********************************************************
 *功能：	采集io标志类信息并存储
 *形参：
 *			Flag_P：控制标志的存储位置
 *返回：
 *			无
 */
void FlagCollection(Flag_T *Flag_P);



/***********************************************************
 *功能：	通过AD采集电磁传感器的参考值
 *形参：
 *			ResultAD_P：AD结果存储地址
 *返回：
 *			无
 */
void NormalV_Collection(ResultAD_T *ResultAD_P);




/***********************************************************
 *功能：	通过AD采集电磁传感器的信息，并进行归一化
 *形参：
 *			ResultAD_P：AD结果存储地址
 *返回：
 *			无
 */
void AD_Collection(ResultAD_T *ResultAD_P);



/***********************************************************
 *功能：	驱动超声波传感器并记录信息
 *形参：
 *			Distance_P：两车的距离信息存储地址
 *返回：
 *			无
 */
void DistanceCollection(uint16_t *Distance_P);


/***********************************************************
 *功能：	接收UART通讯的信息
 *形参：
 *			Message_P:通讯的信息储存地址
 *返回：
 *			无
 */
void MessageCollection(Message_T *Message_P);


/************************************************************************
 *功能：	对各种信息的采集是的排序，并包装，外模块主要调用这个函数实现功能
 *形参：
 *			DataEM_P:数据采集阶段的数据集合的地址
 *返回：
 *			无
 */
void DataCollection(DataEM_T *DataEM_P);




/***********************************************以下为所用中断************************************************/

/************************************************************************
 * 功能：	io中断函数
 * 形参：
 *      	无
 * 返回：
 *      	无
 */
void PlaceF_PTA_ISR(void);



/************************************************************************
 *功能：	UART串口接受中断函数
 *形参：
 *			无
 *返回：
 *			无
 */
 void MessageUART_ISR();



/************************************************************************
 *功能：	tpm中断函数，读取计算超声波传感器的反馈
 *形参：
 *			无
 *返回：
 *			无
 */
 void MessageTPM2_ISR();


#endif /* _DATACOLLECTION_H_ */
