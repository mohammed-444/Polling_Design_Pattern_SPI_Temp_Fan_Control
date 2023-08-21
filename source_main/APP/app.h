
#ifndef _APP_H
#define _APP_H

#include "polling/poller.h"
#include "../ECUAL/dc_motor/dc_motor.h"
#include "../ECUAL/lcd/lcd.h"
#include "../ECUAL/button/button.h"
#include "../MCAL/spi/spi.h"
#include "../MCAL/EXT_INTERRUPT/EXT_INTTERUPT.h"
#include "../ECUAL/TC72/TC72.h"
#include "../MCAL/timer/timer.h"





void polling_design_pattern_spi_temp_fan_control(void);



#endif
