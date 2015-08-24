/**************************************************************************************************
 * �ļ���	DataProcessing.c
 * Ŀ�ģ�	���ݴ���ģ��������ź������ݲɼ�ģ���е����вɼ�������Ϣ��������ɵĹ����У�
 *				���ݸ��ֿ�����������������
 *				���ݵ�·��Ϣ�������ʵ���ģ�͵ó���ǰ����ģ�����ﵽ�ĽǶȣ��ٶȡ�
 *				�Ƕȵļ������ADֵ���ƫ��ֵ���ٵ����������������б�ʣ��ٽ�б��ת��Ϊ�Ƕȡ��ٶȸ��ݽǶ�ȷ����
 * ���̣�	��д��AD�õ��ٶȣ��Ƕȹ�ϵ��Ȼ�����������Ϣȷ�����յĳ�������
 */
 
#include "DataProcessing.h"

volatile extern int16_t SpeedBackGlobal;

 
/*******************************************************************************************************
 * ���ܣ�	��AD����Ϣ���д������õ���������ƫ��С�����ߵĺ�����롣
 * �βΣ�
 * 		ResultAD��  AD�����ַ
 * ���أ�
 *		coords��    һά����ֵ
 * ��ע��	��ȫ���������Թ�ϵ����µ�ģ�ͣ�������������������,��취
 */
int16_t ResultAD2XY(ResultAD_T ResultAD[])
{
	int32_t LeftX, RightX, LeftY, RightY, LeftV, RightV;	//�м����
	static int32_t coords;
	int16_t ratio;         //�м��������
	
	//LeftX = (uint16_t)(ResultAD[0].NormalV + ResultAD[2].NormalV) >> 1;
	//RightX = (uint16_t)(ResultAD[1].NormalV + ResultAD[3].NormalV) >> 1;
	LeftX = ResultAD[0].NormalV;				//δʹ��ResultAD[2].NormalV��ResultAD[3].NormalV
	RightX =ResultAD[1].NormalV;
	LeftY   = ResultAD[4].NormalV;
	RightY = ResultAD[5].NormalV;
	LeftV   = (uint16_t)sqrt(LeftX * LeftX + LeftY * LeftY);
	RightV  = (uint16_t)sqrt(RightX * RightX + RightY * RightY);
	
	ratio   = X_LengthMM * 100 / NormalRangeAD;		//��100��Ϊ���ƶ�С���㣬���⸡�����
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
		//����һ�����˵Ĺ���
	}
	
	return coords;
}







/********************************************************************************************************
 *���ܣ�	��AD����Ϣ���д������õ�������̬�����е������������������γɵļнǹ�ϵ���Ƕ��ƺ;���ֵ��ʽ��ʾ
 *�βΣ�
 * 			ResultAD��  AD�����ַ
 *���أ�
 *			PoseError�� ��̬����ֵ
 * ��ע��	��ͨ����ǿ��ʸ����һ����������нǵ�
 */
int16_t  ResultAD2PoseError(ResultAD_T ResultAD[])
{
	int16_t LeftX, RightX, LeftY, RightY;	//�м����
	static int16_t PoseError;
	
	//LeftX = (uint16_t)(ResultAD[0].NormalV + ResultAD[2].NormalV) >> 1;
	//RightX = (uint16_t)(ResultAD[1].NormalV + ResultAD[3].NormalV) >> 1;
	LeftX = ResultAD[0].NormalV;		//δʹ��ResultAD[2].NormalV��ResultAD[3].NormalV
	RightX =ResultAD[1].NormalV;
	LeftY   = ResultAD[4].NormalV;
	RightY = ResultAD[5].NormalV;
	
	if(LeftY == 0)				//��ֹ����Ϊ0
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
 *���ܣ�	��ADֵ�����жϣ��õ�������Ҫת��ĽǶȡ�
 *�βΣ�
 *		ResultAD��	AD���
 *���أ�
 *		degree��		�Ƕ�
 */
int_16 XY2Angle(ResultAD_T ResultAD[])
{
	float slope;
	static int16_t degree;
	int16_t coords, PoseError;
	uint16_t YK, PEK;							//��������ֵʱ��y���ꡢ����ϵ��
	
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
		
	slope = (float)YK / coords;				//����ֵ
	degree = (int16_t)(atanf(slope) * 180. / PI);	//�Ƕȣ��Ƕ���
	if(degree < 0)									//ת�������к�����ֵ��
		degree += 180;
	
	if(coords < 0)								//����������ƫ��
		degree += (PEK * PoseError) / 100;		//��������
	else										//ƫ��
		degree -= (PEK * PoseError) / 100;		//��������
	
	return degree;
}



/****************************************************************************************************************
 * ���ܣ�	�����������ɢ�ĵ㣬ȷ��һ�����ߣ����Ҷ�һ�����߶������ڵ�ֵ�������ֵ���ж�Ӧ��ֵ
 * �βΣ�	
 *		DispersePoint:	ȷ�����ߵ�һЩ��ɢ�ĵ�ĵ�ַ
 *		NumPoint��		�����Ŀ
 *		input:			���߶������е�һ��ֵ
 * ���أ�
 *		output:			ֵ���Ӧ���,������벻�ڶ������ڣ��򷵻�ֵ���ڵ�һ��ֵ
 * ˵����	�������ɢ���ǰ��������С�������еģ���һ�������һ�������˶�����Χ
 */
float PolylineModel(DispersePoint_T DispersePoint[], uint8_t NumPoint, float input)
{
	uint8_t low = 0, high = NumPoint - 1;		//���ʱ�����¼ֵ�ĳ�ʼ��
	uint8_t PlaceInput = 0;
	float output;
	
	//�۰���ȷ��������������
	while(low <= high)
	{
		PlaceInput = (low + high) / 2;
		if(input >= DispersePoint[PlaceInput].x && input < DispersePoint[PlaceInput].x)			//����
			break;
		else if(input < DispersePoint[PlaceInput].x)							//��ǰ����
			high = PlaceInput - 1;
		else												//������
			low = PlaceInput + 1;
	}
	output = (DispersePoint[PlaceInput + 1].y - DispersePoint[PlaceInput].y)			//���ݱ�����ϵ��ֵ
				 / (DispersePoint[PlaceInput + 1].x - DispersePoint[PlaceInput].x)
				 * (input - DispersePoint[PlaceInput].x) + DispersePoint[PlaceInput].y;
	
	return output;
}




/****************************************************************
 * ���ܣ�	���ݽǶȵõ�����ʵ��ٶ�
 * �βΣ�
 *		angle��	�Ƕ�
 *		GearFn:	�ٶ�ѡ��
 * ���أ�
 *		speed��	�ٶ�
 */
int16_t Angle2Speed(uint16_t angle, uint8_t GearFn)
{
	int16_t speed;
	DispersePoint_T *DispersePoint_P;			//���ڴ洢��ѡ����ٶȣ��Ƕ����߹�ϵ 
	static DispersePoint_T DispersePoint[9][10] = 
		{
			{{0, 70}, {10, 70}, {20, 70}, {30, 75}, {40, 80}, {50, 100}, {60, 115}, {70, 125}, {80, 125}, {90, 130}},	//0���ٶȣ�����
			{{0, 75}, {10, 75}, {20, 75}, {30, 80}, {40, 85}, {50, 100}, {60, 125}, {70, 140}, {80, 148}, {90, 150}},	//1���ٶ�
			{{0, 75}, {10, 75}, {20, 80}, {30, 85}, {40, 90}, {50, 110}, {60, 135}, {70, 160}, {80, 168}, {90, 170}},	//2���ٶ�
			{{0, 80}, {10, 80}, {20, 85}, {30, 95}, {40, 110}, {50, 130}, {60, 150}, {70, 180}, {80, 188}, {90, 190}},	//3���ٶ�
			{{0, 85}, {10, 85}, {20, 90}, {30, 100}, {40, 110}, {50, 130}, {60, 150}, {70, 180}, {80, 195}, {90, 200}},	//4���ٶ�
			{{0, 90}, {10, 90}, {20, 95}, {30, 105}, {40, 120}, {50, 135}, {60, 160}, {70, 190}, {80, 210}, {90, 220}},	//5���ٶ�
			{{0, 95}, {10, 95}, {20, 105}, {30, 115}, {40, 130}, {50, 150}, {60, 170}, {70, 200}, {80, 230}, {90, 250}},	//6���ٶ�
			{{0, 100}, {10, 120}, {20, 130}, {30, 130}, {40, 140}, {50, 160}, {60, 180}, {70, 230}, {80, 260}, {90, 280}},	//7���ٶȣ����
			//{{0, 100}, {10, 105}, {20, 115}, {30, 140}, {40, 160}, {50, 190}, {60, 250}, {70, 300}, {80, 330}, {90, 350}},	//7���ٶȣ����

		};	//��ϵ
	
	DispersePoint_P = DispersePoint[GearFn];	//ѡ���ٶ�����
	if(angle > 90)
		angle = 180 - angle;
	speed = (int16_t)PolylineModel(DispersePoint_P, 10, angle);
	//DisplayDebug[3].num = speed;
	return speed;
}


/*****************************************************************************
 * ���ܣ�	���ݳ������ڵ���Ϣ��ȷ��Ҫ���͵�����һ��С������Ϣ�����ַ�����ʽ����
 * �βΣ�
 *          	DataEM��	�ɼ�����Ϣ
 *      	OutputData�����������Ϣ
 * ���أ�
 *         	message��	Ҫ���͵���Ϣ
 */
Message_T MessageGenerate(DataEM_T DataEM, OutputData_T OutputData)
{
	Message_T message;
  
	message.RunF = DataEM.flag.RunF;
#ifdef CAR_BACK		//ֻ�к󳵻ᷢ�;�����Ϣ
	message.distance = DataEM.distance;
#endif /* CAR_BACK */
	//message.speed = OutputData.speed;
	message.speed = SpeedBackGlobal;
	message.angle   = OutputData.angle;
	//λ��
	message.PlaceFn = DataEM.flag.PlaceFn;
	
	message.str[0] = message.speed % 10 + '0';	message.str[1] = message.speed / 10 % 10 + '0';	message.str[2] = message.speed / 100 + '0';	//�ٶȣ�ռ�����ֽڣ����λΪmessage.str[2]
	message.str[3] = message.angle % 10 + '0';	message.str[4] = message.angle / 10 % 10 + '0';	message.str[5] = message.angle / 100 + '0';	//�Ƕȣ�ռ�����ֽڣ����λΪmessage.str[5]
#ifdef CAR_BACK		//ֻ�к󳵻ᷢ�;�����Ϣ
	message.str[6] = message.distance % 10 + '0';	message.str[7] = message.distance / 10 % 10 + '0';	message.str[8] = message.distance / 100 + '0';	//���룬ռ�����ֽڣ����λΪmessage.str[8]
#endif /* CAR_BACK */
	if(message.RunF == TurnOff)		//��'a'����message.RunF == TurnOff,'z'����message.RunF == TurnOn���Է�ֹ����
		message.str[9] = 'a';
	else if(message.RunF == TurnOn)
		message.str[9] = 'z';
	message.str[10] = message.PlaceFn + '0'; message.str[11] = '\0';
	
	return message;
}





/****************************************************************
 * ���ܣ�	ͨ��PlaceF�ź���ȷ��RunF�ź�
 * �βΣ�
 *			flag����־
 * ���أ�
 *			temp��	������ͣ��Ĵ���
 */
uint8_t Place2Run(Flag_T flag)
{
	static uint8_t cnt = 0;
	static uint8_t LogF = TurnOff;
	uint8_t temp;
	
	if(flag.PlaceF == TurnOn && LogF == TurnOff)	//��⵽�ź�
	{
		LogF = TurnOn;
		++cnt;
	}
	else if(flag.PlaceF == TurnOff && LogF == TurnOn)	//�뿪�ź���
		LogF = TurnOff;
	else
	{}
	temp = cnt;
	if(cnt == 2)	//�ڶ��μ�⵽ʱ˵����⵽ֹͣ�ź�,��λ����ֵ��һȦ�в���ִ�е���һ��
	{
		cnt = 0;
	}
	
	return temp;
}




/****************************************************************
 * ���ܣ�	�ռ�������
 * �βΣ�
 *			DataEM:		�ɼ�������
 * ���أ�
 *			OutputData��	������Ϣ
 */
OutputData_T DataProcessing(DataEM_T DataEM)
{
	int16_t temp;
	OutputData_T OutputData;

	if(gpio_get(DEBUG_PIN) == TurnOn)		//���Ƶ���ģʽ����˫��ģʽ
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
	
	if(DataEM.flag.RunF ==  TurnOn && DataEM.message.RunF == TurnOn) //�������ƣ���֤ǰ��ͬʱ����
	{
		static uint32_t CountT = 0;
		
		if(CountT < 3000)			//�⼸���������Ϊ�ɻɹ��ź��ж�����������ʱ10s�Թ���ʼʱ�ļ��
		{
			CountT++;
			if(CountT == 3000)
			enable_irq(PortA_irq_no);
		}
		
		OutputData.OffPID = 0;
		//temp = Place2Run(DataEM.flag);
		if(DataEM.flag.PlaceFn == 0)	//���ֹͣ�źţ�ֻ�ں󳵰�װ�ɻɹܵĻ���ֻ�к�ֹͣ�ź���Ч,
		{
			temp = XY2Angle(DataEM.ResultAD); 
			OutputData.angle = temp;  //  �Ƕ�
			
			temp = Angle2Speed(temp, DataEM.flag.GearFn); //���������ٶ�

#ifdef CAR_BACK
			if(DataEM.distance < DistanceMinCM && temp > DataEM.message.speed)  //�������Сʱ�����Һ󳵵��ٶȴ���ǰ��ʱ����Ӧ�����ٶȡ�
			{
				temp = (DataEM.message.speed > 10) ? (DataEM.message.speed - 10) : DataEM.message.speed;
			}
			
		
#endif /* CAR_BACK */

#ifdef CAR_FRONT
			if(DataEM.message.distance > DistanceMaxCM && temp > DataEM.message.speed)  //���������ʱ������ǰ�����ٶȴ��ں�ʱ��ǰ��Ӧ�����ٶȡ�
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
			if(SpeedBackGlobal < 8)			//�����ǵ������������ֹ��ת
			{
				OutputData.OffPID = 1;
			}
		}
	}
	else					//�رտ���
	{
		OutputData.OffPID = 1;
		OutputData.angle = 90;
	}
  
	OutputData.message = MessageGenerate(DataEM, OutputData);   //ȷ��ͨ�ŵ���Ϣ
	return OutputData;
}
