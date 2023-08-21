/******************************************
* Module: EXT_INTERRUPT
*
* File Name: EXT_INTERRUPT.c
*
* Description: source file for AVR external interrupt
*
* Author: Mohammed Alaa
*
******************************************/

#include "EXT_INTTERUPT.h"



void GLOBAL_INTERRUPT_ENABLE(void)
{
	sei();
}

void GLOBAL_INTERRUPT_DISABLE(void)
{
	cli();
}

void INT0_init( EXT_triggerType triggerType,GPIO_PinDirectionType direction)
{
	GPIO_setupPinDirection(PORTD_ID,PIN2_ID,direction);/*set pin as input pin  or input pulled up*/
	MCUCR = (MCUCR & 0xFC) | triggerType;/*set type of trigger*/
	SET_BIT(GICR ,6); /*enable INT0*/
}



void INT0_deInit(void)
{
	CLEAR_BIT(GICR ,6);
}

