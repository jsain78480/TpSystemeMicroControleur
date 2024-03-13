/*
 * RCFilter.h
 *
 *  Created on: Mar 13, 2024
 *      Author: juliensaint-leger
 */

#ifndef INC_RCFILTER_H_
#define INC_RCFILTER_H_

#include "main.h"

typedef struct {
uint32_t coeffA;
uint32_t coeffB;
uint32_t coeffD;
uint16_t out_prev;
} hRCFilter_t;

// Calcule les coefficients A, B et D
// Et les stocke dans la structure
void RCFilterInit(hRCFilter_t * hRCFilter,
uint16_t cutoffFrequency, uint16_t samplingFrequency);
// Implémente l'équation de récurrence
// Faites attention au type des différentes variables
uint16_t RCFilterUpdate(hRCFilter_t * hRCFilter, uint16_t input);

#endif /* INC_RCFILTER_H_ */
