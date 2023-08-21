#include "button.h"

/*
 * Description :
 * Setup the direction of the required button to  input.
 * Setup the pull up or tri state
 * If the input port number or pin number are not correct, The function will not handle the request.
 */
void button_init(uint8 port_num, uint8 pin_num,BUTTON_DefualtInputType DefualtInput){

	GPIO_setupPinDirection( port_num,  pin_num, PIN_INPUT);

	if(DefualtInput == PULL_UP){
		GPIO_writePin( port_num,  pin_num, LOGIC_HIGH);
	}
	else
	{
		GPIO_writePin( port_num,  pin_num, LOGIC_LOW);
	}
}


/*
 * Description :
 * Read and return the value for the required pin, it should be Logic High or Logic Low.
 * If the input port number or pin number are not correct, The function will return Logic Low.
 */
uint8 read_button(uint8 port_num, uint8 pin_num){

	uint8 pin_value = LOGIC_LOW;

	pin_value = GPIO_readPin( port_num,  pin_num);

	return pin_value;

}




