/*
 * PollDataClient.c
 *
 *  Created on: Mar 31, 2022
 *      Author: moham
 */

#include "PollingDataClient.h"

sint16 integral=0;
void Handle_data(uint8 temperature)
{
	sint8 current_temperature = temperature;
	sint8 target_temperature = 30;

	sint8 error =  current_temperature - target_temperature;
	integral = integral + (error);
	sint16 PWM_signal = (KP * error*10) +(KI * integral*10);
	if(PWM_signal > 186 )
	{
		PWM_signal = 186;
	}
	else if(PWM_signal  < 0)
	{
		PWM_signal = 0;
	}

	DcMotor_Rotate(clockwise,(PWM_signal));
	LCD_displayStringRowColumn((uint8)0,(uint8)11,"  ");
	LCD_displayStringRowColumn((uint8)1,(uint8)11,"  ");
	LCD_moveCursor(0,9);
	LCD_intgerToString(temperature);
	LCD_moveCursor(1,9);
	LCD_intgerToString(PWM_signal);
}

