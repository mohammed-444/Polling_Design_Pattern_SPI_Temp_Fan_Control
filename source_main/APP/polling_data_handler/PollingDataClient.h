/*
 * PollingDataClient.h
 *
 *  Created on: Mar 31, 2022
 *      Author: moham
 */


#ifndef INC_POLLINGDATACLIENT_H_
#define INC_POLLINGDATACLIENT_H_
#include "../../ECUAL/lcd/lcd.h"
#include "../../ECUAL/dc_motor/dc_motor.h"
#define KP  0.1f
#define KI  0.01f


void Handle_data(uint8 temperature);


#endif /* INC_POLLINGDATACLIENT_H_ */
