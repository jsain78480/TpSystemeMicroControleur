/*
 * Timebase.c
 *
 *  Created on: Mar 13, 2024
 *      Author: juliensaint-leger
 */


#include "Timebase.h"
#include "main.h"

// Initialise le timer
void TimeBaseStartIT(){
	LL_TIM_EnableUpdateEvent(TIM21);
	LL_TIM_EnableIT_UPDATE(TIM21);
	LL_TIM_EnableCounter(TIM21);
}
