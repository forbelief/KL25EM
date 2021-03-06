/**************************************************************************************************
 * 文件：	DataProcessing.c
 * 目的：	数据处理模块的输入信号是数据采集模块中的所有采集到的信息。所需完成的工作有：
 *				根据各种开关量决定程序走向。
 *				根据道路信息，建立适当的模型得出当前理想的，所需达到的角度，速度。
 *				角度的计算根据AD值求出偏移值，再到车子相对于赛道的斜率，再将斜率转化为角度。速度根据角度确定。
 * 流程：	先写由AD得到速度，角度关系，然后根据其它信息确定最终的程序走向。
 */
 
#include "DataProcessing.h"

volatile extern int16_t SpeedBackGlobal;

 
/*******************************************************************************************************
 * 功能：	对AD的信息进行处理，得到赛道中线偏离小车中线的横向距离。
 * 形参：
 * 		ResultAD：  AD结果地址
 * 返回：
 *		coords：    一维坐标值
 * 备注：	完全假设是线性关系情况下的模型，对于这个函数不理解的,想办法
 */
int16_t ResultAD2XY(ResultAD_T ResultAD[])
{
	int32_t LeftX, RightX, LeftY, RightY, LeftV, RightV;	//中间变量
	static int32_t coords;
	int16_t ratio;         //中间比例常数
	
	//LeftX = (uint16_t)(ResultAD[0].NormalV + ResultAD[2].NormalV) >> 1;
	//RightX = (uint16_t)(ResultAD[1].NormalV + ResultAD[3].NormalV) >> 1;
	LeftX = ResultAD[0].NormalV;				//未使用ResultAD[2].NormalV和ResultAD[3].NormalV
	RightX =ResultAD[1].NormalV;
	LeftY   = ResultAD[4].NormalV;
	RightY = ResultAD[5].NormalV;
	LeftV   = (uint16_t)sqrt(LeftX * LeftX + LeftY * LeftY);
	RightV  = (uint16_t)sqrt(RightX * RightX + RightY * RightY);
	
	ratio   = X_LengthMM * 100 / NormalRangeAD;		//乘100是为了移动小数点，避免浮点计算
	if(LeftV > 0 && RightV > 0)
	{
		coords = (RightV - LeftV) * ratio / 100 / 2;
	}
	else if(LeftV == 0 && RightV > 0)
	{
		coords = (RightV - (NormalRangeAD * 3 / 2)) * (-ratio) / 100;		//(RightV - NormalRangeAD * 1.5) * (-X_LengthMM / NormalRangeAD)
	}
	else if(LeftV > 0 && RightV == 0)
	{
		coords = (LeftV - (NormalRangeAD * 3 / 2)) * ratio / 100;
	}
	else
	{
		//这是一个悲伤的故事
	}
	
	return coords;
}







/********************************************************************************************************
 *功能：	对AD的信息进行处理，得到车子姿态所具有的中线与赛道中线所形成的夹角关系，角度制和绝对值方式表示
 *形参：
 * 			ResultAD：  AD结果地址
 *返回：
 *			PoseError： 姿态修正值
 * 备注：	是通过场强是矢量这一性质来计算夹角的
 */
int16_t  ResultAD2PoseError(ResultAD_T ResultAD[])
{
	int16_t LeftX, RightX, LeftY, RightY;	//中间变量
	static int16_t PoseError;
	
	//LeftX = (uint16_t)(ResultAD[0].NormalV + ResultAD[2].NormalV) >> 1;
	//RightX = (uint16_t)(ResultAD[1].NormalV + ResultAD[3].NormalV) >> 1;
	LeftX = ResultAD[0].NormalV;		//未使用ResultAD[2].NormalV和ResultAD[3].NormalV
	RightX =ResultAD[1].NormalV;
	LeftY   = ResultAD[4].NormalV;
	RightY = ResultAD[5].NormalV;
	
	if(LeftY == 0)				//防止除数为0
		LeftY = 1;
	if(RightY == 0)
		RightY = 1;
	
	if(LeftX != 0 && RightX == 0)
		PoseError = (int16_t)(atan((float)(LeftY) / LeftX) * 180. / PI);
	else if(LeftX != 0 && RightX != 0)
		PoseError = (int16_t)((atan((float)(LeftY) / LeftX) + atan((float)(RightY) / RightX)) * 180. / PI / 2.);
	else if(LeftX == 0 && RightX != 0)
		PoseError = (int16_t)(atan((float)(RightY) / RightX) * 180. / PI);
	
	return PoseError;
}





/****************************************************************
 *功能：	对AD值进行判断，得到赛道需要转向的角度。
 *形参：
 *		ResultAD：	AD结果
 *返回：
 *		degree：		角度
 */
int_16 XY2Angle(ResultAD_T ResultAD[])
{
	float slope;
	static int16_t degree;
	int16_t coords, PoseError;
	uint16_t YK, PEK;							//计算正切值时的y坐标、修正系数
	
	coords = ResultAD2XY(ResultAD);
	PoseError = ResultAD2PoseError(ResultAD);
#ifdef CAR_BACK
	YK = 250;
	PEK = 20;
#endif /* CAR_BACK */
#ifdef CAR_FRONT
	YK = 250;
	PEK = 25;
#endif /* CAR_FRONT */
		
	slope = (float)YK / coords;				//正切值
	degree = (int16_t)(atanf(slope) * 180. / PI);	//角度，角度制
	if(degree < 0)									//转换反正切函数的值域
		degree += 180;
	
	if(coords < 0)								//赛道中心线偏右
		degree += (PEK * PoseError) / 100;		//往左修正
	else										//偏左
		degree -= (PEK * PoseError) / 100;		//往右修正
	
	return degree;
}



/****************************************************************************************************************
 * 功能：	根据输入的离散的点，确定一条折线，并且对一个折线定义域内的值，求出其值域中对应的值
 * 形参：	
 *		DispersePoint:	确定折线的一些离散的点的地址
 *		NumPoint：		点的数目
 *		input:			折线定义域中的一个值
 * 返回：
 *		output:			值域对应输出,如果输入不在定义域内，则返回值域内第一个值
 * 说明：	输入的离散点是按定义域从小往大排列的，第一个和最后一个决定了定义域范围
 */
float PolylineModel(DispersePoint_T DispersePoint[], uint8_t NumPoint, float input)
{
	uint8_t low = 0, high = NumPoint - 1;		//查表时区间记录值的初始化
	uint8_t PlaceInput = 0;
	float output;
	
	//折半查表确定输入所处区间
	while(low <= high)
	{
		PlaceInput = (low + high) / 2;
		if(input >= DispersePoint[PlaceInput].x && input < DispersePoint[PlaceInput].x)			//查找
			break;
		else if(input < DispersePoint[PlaceInput].x)							//向前查找
			high = PlaceInput - 1;
		else												//向后查找
			low = PlaceInput + 1;
	}
	output = (DispersePoint[PlaceInput + 1].y - DispersePoint[PlaceInput].y)			//根据比例关系求值
				 / (DispersePoint[PlaceInput + 1].x - DispersePoint[PlaceInput].x)
				 * (input - DispersePoint[PlaceInput].x) + DispersePoint[PlaceInput].y;
	
	return output;
}




/****************************************************************
 * 功能：	根据角度得到最合适的速度
 * 形参：
 *		angle：	角度
 *		GearFn:	速度选择
 * 返回：
 *		speed：	速度
 */
int16_t Angle2Speed(uint16_t angle, uint8_t GearFn)
{
	int16_t speed;
	DispersePoint_T *DispersePoint_P;			//用于存储所选择的速度，角度曲线关系 
	static DispersePoint_T DispersePoint[9][10] = 
		{
			{{0, 70}, {10, 70}, {20, 70}, {30, 75}, {40, 80}, {50, 100}, {60, 115}, {70, 125}, {80, 125}, {90, 130}},	//0号速度，最慢
			{{0, 75}, {10, 75}, {20, 75}, {30, 80}, {40, 85}, {50, 100}, {60, 125}, {70, 140}, {80, 148}, {90, 150}},	//1号速度
			{{0, 75}, {10, 75}, {20, 80}, {30, 85}, {40, 90}, {50, 110}, {60, 135}, {70, 160}, {80, 168}, {90, 170}},	//2号速度
			{{0, 80}, {10, 80}, {20, 85}, {30, 95}, {40, 110}, {50, 130}, {60, 150}, {70, 180}, {80, 188}, {90, 190}},	//3号速度
			{{0, 85}, {10, 85}, {20, 90}, {30, 100}, {40, 110}, {50, 130}, {60, 150}, {70, 180}, {80, 195}, {90, 200}},	//4号速度
			{{0, 90}, {10, 90}, {20, 95}, {30, 105}, {40, 120}, {50, 135}, {60, 160}, {70, 190}, {80, 210}, {90, 220}},	//5号速度
			{{0, 95}, {10, 95}, {20, 105}, {30, 115}, {40, 130}, {50, 150}, {60, 170}, {70, 200}, {80, 230}, {90, 250}},	//6号速度
			{{0, 100}, {10, 120}, {20, 130}, {30, 130}, {40, 140}, {50, 160}, {60, 180}, {70, 230}, {80, 260}, {90, 280}},	//7号速度，最快
			//{{0, 100}, {10, 105}, {20, 115}, {30, 140}, {40, 160}, {50, 190}, {60, 250}, {70, 300}, {80, 330}, {90, 350}},	//7号速度，最快

		};	//关系
	
	DispersePoint_P = DispersePoint[GearFn];	//选择速度曲线
	if(angle > 90)
		angle = 180 - angle;
	speed = (int16_t)PolylineModel(DispersePoint_P, 10, angle);
	//DisplayDebug[3].num = speed;
	return speed;
}


/*****************************************************************************
 * 功能：	根据车子现在的信息，确定要发送到另外一个小车的信息，以字符串形式发送
 * 形参：
 *          	DataEM：	采集的信息
 *      	OutputData：处理后的信息
 * 返回：
 *         	message：	要发送的信息
 */
Message_T MessageGenerate(DataEM_T DataEM, OutputData_T OutputData)
{
	Message_T message;
  
	message.RunF = DataEM.flag.RunF;
#ifdef CAR_BACK		//只有后车会发送距离信息
	message.distance = DataEM.distance;
#endif /* CAR_BACK */
	//message.speed = OutputData.speed;
	message.speed = SpeedBackGlobal;
	message.angle   = OutputData.angle;
	//位置
	message.PlaceFn = DataEM.flag.PlaceFn;
	
	message.str[0] = message.speed % 10 + '0';	message.str[1] = message.speed / 10 % 10 + '0';	message.str[2] = message.speed / 100 + '0';	//速度，占三个字节，最高位为message.str[2]
	message.str[3] = message.angle % 10 + '0';	message.str[4] = message.angle / 10 % 10 + '0';	message.str[5] = message.angle / 100 + '0';	//角度，占三个字节，最高位为message.str[5]
#ifdef CAR_BACK		//只有后车会发送距离信息
	message.str[6] = message.distance % 10 + '0';	message.str[7] = message.distance / 10 % 10 + '0';	message.str[8] = message.distance / 100 + '0';	//距离，占三个字节，最高位为message.str[8]
#endif /* CAR_BACK */
	if(message.RunF == TurnOff)		//以'a'代表message.RunF == TurnOff,'z'代表message.RunF == TurnOn，以防止出错
		message.str[9] = 'a';
	else if(message.RunF == TurnOn)
		message.str[9] = 'z';
	message.str[10] = message.PlaceFn + '0'; message.str[11] = '\0';
	
	return message;
}





/****************************************************************
 * 功能：	通过PlaceF信号来确定RunF信号
 * 形参：
 *			flag：标志
 * 返回：
 *			temp：	经过启停点的次数
 */
uint8_t Place2Run(Flag_T flag)
{
	static uint8_t cnt = 0;
	static uint8_t LogF = TurnOff;
	uint8_t temp;
	
	if(flag.PlaceF == TurnOn && LogF == TurnOff)	//检测到信号
	{
		LogF = TurnOn;
		++cnt;
	}
	else if(flag.PlaceF == TurnOff && LogF == TurnOn)	//离开信号区
		LogF = TurnOff;
	else
	{}
	temp = cnt;
	if(cnt == 2)	//第二次检测到时说明检测到停止信号,复位计数值，一圈中不会执行到这一步
	{
		cnt = 0;
	}
	
	return temp;
}




/****************************************************************
 * 功能：	终极大审判
 * 形参：
 *			DataEM:		采集的数据
 * 返回：
 *			OutputData：	控制信息
 */
OutputData_T DataProcessing(DataEM_T DataEM)
{
	int16_t temp;
	OutputData_T OutputData;

	if(gpio_get(DEBUG_PIN) == TurnOn)		//控制单车模式还是双车模式
	{
		DataEM.flag.RunF =  TurnOn;
		DataEM.message.RunF = TurnOn;
	}
	
#ifdef CAR_BACK
	DisplayDebug[6].num = DataEM.distance;
#endif /* CAR_BACK */
#ifdef CAR_FRONT
	DisplayDebug[6].num = DataEM.message.distance;
#endif /* CAR_FRONT */
	
	if(DataEM.flag.RunF ==  TurnOn && DataEM.message.RunF == TurnOn) //开启控制，保证前后车同时启动
	{
		static uint32_t CountT = 0;
		
		if(CountT < 3000)			//这几句语句是因为干簧管信号有抖动，所以延时10s略过起始时的检测
		{
			CountT++;
			if(CountT == 3000)
			enable_irq(PortA_irq_no);
		}
		
		OutputData.OffPID = 0;
		//temp = Place2Run(DataEM.flag);
		if(DataEM.flag.PlaceFn == 0)	//检测停止信号，只在后车安装干簧管的话，只有后车停止信号有效,
		{
			temp = XY2Angle(DataEM.ResultAD); 
			OutputData.angle = temp;  //  角度
			
			temp = Angle2Speed(temp, DataEM.flag.GearFn); //单车理想速度

#ifdef CAR_BACK
			if(DataEM.distance < DistanceMinCM && temp > DataEM.message.speed)  //当距离过小时，并且后车的速度大于前车时，后车应减慢速度。
			{
				temp = (DataEM.message.speed > 10) ? (DataEM.message.speed - 10) : DataEM.message.speed;
			}
			
		
#endif /* CAR_BACK */

#ifdef CAR_FRONT
			if(DataEM.message.distance > DistanceMaxCM && temp > DataEM.message.speed)  //当距离过大时，并且前车的速度大于后车时，前车应减慢速度。
			{
				temp = (DataEM.message.speed > 10) ? (DataEM.message.speed - 10) : DataEM.message.speed;
			}
			DisplayDebug[6].num = DataEM.message.distance;
		
#endif /* CAR_FRONT */

			OutputData.speed = temp;
		}
		else
		{			
			OutputData.speed = 0;
			OutputData.angle = 90;
			if(SpeedBackGlobal < 8)			//由于是单相编码器，防止反转
			{
				OutputData.OffPID = 1;
			}
		}
	}
	else					//关闭控制
	{
		OutputData.OffPID = 1;
		OutputData.angle = 90;
	}
  
	OutputData.message = MessageGenerate(DataEM, OutputData);   //确定通信的信息
	return OutputData;
}

