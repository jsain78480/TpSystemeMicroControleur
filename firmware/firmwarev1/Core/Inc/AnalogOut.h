/*
 * AnalogOut.h
 *
 *  Created on: Mar 13, 2024
 *      Author: juliensaint-leger
 */

#ifndef INC_ANALOGOUT_H_
#define INC_ANALOGOUT_H_

#include "main.h"

void AnalogOutInit(void);
void AnalogOutConvert(uint16_t value);
void AnalogOutPulse(uint16_t increment);


#endif /* INC_ANALOGOUT_H_ */
