
#ifndef _BUTTON_H
#define _BUTTON_H

#include "../../MCAL/gpio/gpio.h"


/*******************************************************************************
 *                                Definitions                                  *
 *******************************************************************************/
#define NUM_OF_BUTTON          ((uint8)1)
#define PWM_BUTTON_PORT        (PORTA_ID)
#define PWM_BUTTON_PIN		   (PIN0_ID)

/*******************************************************************************
 *                               Types Declaration                             *
 *******************************************************************************/
typedef enum
{
	TRI_STATE,PULL_UP
}BUTTON_DefualtInputType;

/*******************************************************************************
 *                              Functions Prototypes                           *
 *******************************************************************************/

/*
 * Description :
 * Setup the direction of the required button to  input.
 * Setup the pull up or tri state
 * If the input port number or pin number are not correct, The function will not handle the request.
 */
void button_init(uint8 port_num, uint8 pin_num,BUTTON_DefualtInputType DefualtInput);

/*
 * Description :
 * Read and return the value for the required pin, it should be Logic High or Logic Low.
 * If the input port number or pin number are not correct, The function will return Logic Low.
 */
uint8 read_button(uint8 port_num, uint8 pin_num);


#endif
