/*
 * AnalogOut.c
 *
 *  Created on: Mar 13, 2024
 *      Author: juliensaint-leger
 */

#include "AnalogOut.h"
#include "spi.h"
#include "gpio.h"
#include "stm32l0xx_ll_spi.h"
#include "main.h"

void AnalogOutInit(void) {
	LL_SPI_Enable(SPI1);
}
void AnalogOutConvert(uint16_t value){

}
void AnalogOutPulse(uint16_t increment){

}
