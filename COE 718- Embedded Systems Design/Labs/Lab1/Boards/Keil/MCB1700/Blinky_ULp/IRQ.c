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
 * Name:    IRQ.c
 * Purpose: IRQ Handler
 *----------------------------------------------------------------------------*/

#include "LPC17xx.h"                    // LPC17xx Definitions
#include "Board_LED.h"
#include "Board_ADC.h"

extern uint16_t AD_last;                // Last converted value

uint8_t clock_1s;                       // Flag activated each second

/*------------------------------------------------------------------------------
  SysTick IRQ Handler (occurs every 10 ms)
 *----------------------------------------------------------------------------*/
void SysTick_Handler (void) {
  static unsigned long ticks = 0;
  static unsigned long timetick;
  static unsigned int  leds = 0x01;

  if (ticks++ >= 99) {                  // Set Clock1s to 1 every second
    ticks    = 0;
    clock_1s = 1;
  }

  // Blink the LEDs depending on ADC_ConvertedValue
  if (timetick++ >= (AD_last >> 8)) {
    timetick   = 0;
    leds     <<= 1;
    if (leds == (1 << LED_GetCount())) leds = 0x01;
    LED_SetOut (leds);
  }

  ADC_StartConversion();                // Start ADC conversion
}
