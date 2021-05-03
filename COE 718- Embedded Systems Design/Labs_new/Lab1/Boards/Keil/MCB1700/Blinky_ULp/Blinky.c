/*------------------------------------------------------------------------------
 * Copyright (c) 2004 - 2019 Arm Limited (or its affiliates). All
 * rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *   1.Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   2.Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *   3.Neither the name of Arm nor the names of its contributors may be used
 *     to endorse or promote products derived from this software without
 *     specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *------------------------------------------------------------------------------
 * Name:    Blinky.c
 * Purpose: LED Flasher for MCB1700
 *----------------------------------------------------------------------------*/

#include <stdio.h>
#include "LPC17xx.h"                    // Device header
#include "Board_LED.h"                  // ::Board Support:LED
#include "Board_ADC.h"                  // ::Board Support:A/D Converter
#include "Board_Joystick.h" 

char text[10];

/* Import external variables from IRQ.c file */
extern volatile unsigned char clock_1s;

// variable to trace in LogicAnalyzer (should not read to often)
volatile unsigned short AD_dbg;

uint16_t AD_last;                       // Last converted value
uint32_t temp;
/*------------------------------------------------------------------------------
  Main function
 *----------------------------------------------------------------------------*/
int main (void) {
  int32_t  res;
  uint32_t AD_avg   = 0;
  uint16_t AD_value = 0;
  uint16_t AD_print = 0;
	char text1[100];
  LED_Initialize();                     // LED Initialization
  ADC_Initialize();                     // ADC Initialization

  SystemCoreClockUpdate();
  SysTick_Config(SystemCoreClock/100);  // Generate interrupt each 10 ms

  while (1) {                           // Loop forever
    
		uint32_t temp = Joystick_GetState();
		if(temp) {
			sprintf(text1, "Joystick value: 0x%08X\r\n", temp);
		}
    // AD converter input
    res = ADC_GetValue();
    if (res != -1) {                    // If conversion has finished
      AD_last = res;

      AD_avg += AD_last << 8;           // Add AD value to averaging
      AD_avg ++;
      if ((AD_avg & 0xFF) == 0x10) {    // average over 16 values
        AD_value = (AD_avg >> 8) >> 4;  // average devided by 16
        AD_avg = 0;
      }
    }

    if (AD_value != AD_print) {
      AD_print = AD_value;              // Get unscaled value for printout
      AD_dbg   = AD_value;

      sprintf(text, "0x%04X", AD_value); // format text for print out
    }

    // Print message with AD value every second 
    if (clock_1s) {
      clock_1s = 0;

      printf("AD value: %s\r\n", text);
    }
  }
}
