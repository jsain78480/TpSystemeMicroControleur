/*
 * AnalogIn.h
 *
 *  Created on: Mar 13, 2024
 *      Author: juliensaint-leger
 */

#ifndef INC_ANALOGIN_H_
#define INC_ANALOGIN_H_

#include "main.h"

void AnalogInInit(void);
void AnalogInStartConversion(void);
// Cette fonction fait du polling, même si c'est pas bien
uint16_t AnalogInGetValue(void);

#endif /* INC_ANALOGIN_H_ */
