
#include "dc_motor.h"

/* this function set pin direction*/
void DcMotor_Init(void){
GPIO_setupPinDirection(MOTOR_PORT, MOTOR_PIN1,PIN_OUTPUT);
GPIO_setupPinDirection(MOTOR_PORT, MOTOR_PIN2,PIN_OUTPUT);
GPIO_setupPinDirection(MOTOR_PORT_ENABLE_PIN, MOTOR_ENABLE_PIN,PIN_OUTPUT);
}

/* this function write the value of the pin*/
void DcMotor_Rotate(DcMotor_State state,uint8 speed){

	GPIO_writePin(MOTOR_PORT, MOTOR_PIN1,(uint8)(state)&(uint8)1);
	GPIO_writePin(MOTOR_PORT, MOTOR_PIN2,(((uint8)state)&((uint8)1<<1)));

	PWM_Timer2_Start(speed);

}
