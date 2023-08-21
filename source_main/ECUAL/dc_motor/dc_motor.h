/*
 * dc_motor.h
 *
 *  Created on: Feb 26, 2022
 *      Author: hp
 */

#ifndef SOURCE_DC_MOTOR_H_
#define SOURCE_DC_MOTOR_H_

#include "../../std_types.h"
#include "../../MCAL/gpio/gpio.h"
#include "../../MCAL/pwm/pwm.h"
/*******************************************************************************
 *                                Definitions                                  *
 *******************************************************************************/
#define MOTOR_PORT   		 (PORTB_ID)
#define MOTOR_PIN1   		 (PIN0_ID)
#define MOTOR_PIN2  		 (PIN1_ID)
#define MOTOR_ENABLE_PIN  	 (PIN7_ID)
#define MOTOR_PORT_ENABLE_PIN    		 (PORTD_ID)
/*******************************************************************************
 *                          type deceleration                                  *
 *******************************************************************************/
typedef enum{
stop,clockwise,anti_clockwise
}DcMotor_State;



/*******************************************************************************
 *                      Functions Prototypes                                   *
 *******************************************************************************/

void DcMotor_Init(void);


void DcMotor_Rotate(DcMotor_State state,uint8 speed);


#endif /* SOURCE_DC_MOTOR_H_ */
