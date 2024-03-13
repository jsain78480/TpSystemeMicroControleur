/*
 * Serial.h
 *
 *  Created on: Mar 13, 2024
 *      Author: juliensaint-leger
 */

#ifndef INC_SERIAL_H_
#define INC_SERIAL_H_


#include "main.h"

uint8_t SerialTransmit(char * pData, uint16_t Size);

char SerialReceiveChar(void);

#endif /* INC_SERIAL_H_ */
