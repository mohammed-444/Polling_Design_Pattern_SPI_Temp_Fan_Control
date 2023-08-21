#include "app.h"



void polling_design_pattern_spi_temp_fan_control(void)
{
	GLOBAL_INTERRUPT_ENABLE();
	LCD_init();

	LCD_displayStringRowColumn((uint8)0,(uint8)0,"TEMP IS: ");
	LCD_displayStringRowColumn((uint8)1,(uint8)0,"PWM IS: ");


	/*use user custom data type to set it with configuration for Timer 0*/
	Timer0_ConfigType timer0_config_var ={COMPARE_MODE,F_CPU_1024,0,98};

	/*init timer */
	Timer0_init(&timer0_config_var);

	SetPollingTime(500);

	StartPolling();

	Timer0_setCallBack(Poll);

	DcMotor_Init();
	SPI_initMaster();

	TC72_Init(CONTINUOUS_MODE);


	while(1)
	{

	}

}

