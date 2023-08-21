#include "pwm.h"


void PWM_Timer2_Start(uint8 duty_cycle){
	/*
	 * FOC0=0 PWM MODE
	 * WGM00 & WGM01 =1 FAST PWM
	 * COM01 =1 NON INVERTING MODE
	 * CS01=1 PRESCALER 8
	 * */
	TCCR2=(1<<WGM21)|(1<<WGM20)|(1<<COM21)|(1<<CS21);
	OCR2=duty_cycle;

}
