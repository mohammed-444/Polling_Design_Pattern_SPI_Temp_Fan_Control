/*
 * TC72.c
 *
 *  Created on: Dec 7, 2022
 *      Author: Alaa
 */

#include "TC72.h"
#include "../../MCAL/gpio/gpio.h"
#include "../../MCAL/spi/spi.h"

void TC72_Init(unsigned char  mode)
{
	GPIO_writePin(PORTB_ID, PIN4_ID, LOGIC_HIGH);
	SPI_sendReceiveByte(0x80);
	SPI_sendReceiveByte(mode);
	GPIO_writePin(PORTB_ID, PIN4_ID, LOGIC_LOW);
}

unsigned char TC72_ReadTemp(void)
{
	unsigned char data=0;
	GPIO_writePin(PORTB_ID, PIN4_ID, LOGIC_HIGH);
	SPI_sendReceiveByte(0x02);
	data = SPI_sendReceiveByte(SPI_DEFAULT_DATA_VALUE);
	GPIO_writePin(PORTB_ID, PIN4_ID, LOGIC_LOW);
	return data;
}
