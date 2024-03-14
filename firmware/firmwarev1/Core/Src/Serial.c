/*
 * Serial.c
 *
 *  Created on: Mar 13, 2024
 *      Author: juliensaint-leger
 */


#include "Serial.h"
#include "main.h"

//Transmission sur l'UART
uint8_t SerialTransmit(char * pData, uint16_t Size){
	for (uint8_t i=0;i<Size;i++){
		LL_USART_TransmitData8(USART2, pData[i]);
		while(LL_USART_IsActiveFlag_TXE(USART2)==0);
	}
	return 0;
}

//Réception sur l'UART

char SerialReceiveChar (void) {
	while(LL_USART_IsActiveFlag_RXNE(USART2)==0);
	return LL_USART_ReceiveData8(USART2);
}
