/*
 * poller.c
 *
 *  Created on: Mar 31, 2022
 *      Author: mohammed alaa
 */
#include "poller.h"
#include "../../ECUAL/TC72/TC72.h"
#include "../polling_data_handler/PollingDataClient.h"

int polling_enabled= 1;
int polling_counter= 1;
int counter = 0 ;

void Poll(void)
{
	if(polling_enabled && (!counter))
	{
		uint8 data;
		data = TC72_ReadTemp();
		Handle_data(data);

	}
	counter++;
	counter = counter%polling_counter;
}

void StartPolling(void)
{
	polling_enabled=1;
}

void StopPolling(void)
{
	polling_enabled=0;
}

void SetPollingTime(int polling_time)
{
	polling_counter = polling_time/100;
}
