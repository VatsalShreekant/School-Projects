//*****************************************************************************
//   +--+
//   | ++----+
//   +-++    |
//     |     |
//   +-+--+  |
//   | +--+--+
//   +----+    Copyright (c) 2011 Code Red Technologies Ltd.
//
// Header file containing C macros to provide bitbanding on Cortex-M3 MCU's
//
// Software License Agreement
//
// The software is owned by Code Red Technologies and/or its suppliers, and is
// protected under applicable copyright laws.  All rights are reserved.  Any
// use in violation of the foregoing restrictions may subject the user to criminal
// sanctions under applicable laws, as well as to civil liability for the breach
// of the terms and conditions of this license.
//
// THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
// OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
// USE OF THIS SOFTWARE FOR COMMERCIAL DEVELOPMENT AND/OR EDUCATION IS SUBJECT
// TO A CURRENT END USER LICENSE AGREEMENT (COMMERCIAL OR EDUCATIONAL) WITH
// CODE RED TECHNOLOGIES LTD.
//
//*****************************************************************************

#ifndef BITBAND_H_
#define BITBAND_H_

/* The Cortex-M3 memory map includes two bit-band regions. These occupy the lowest
 * 1MB of the SRAM and peripheral memory regions respectively.
 * + SRAM: 	Bit-band region: 	0x20000000 - 0x20100000
 * 			Bit-band alias:		0x22000000 - 0x23FFFFFF
 * + PERI:	Bit-band region:	0x40000000 - 0x40100000
 * 			Bit-band alias:		0x42000000 - 0x43FFFFFF
 * The mapping formula:
 * 		bit_word_offset = (byte_offset * 32) + (bit_number * 4)
 * 		bit_word_address = bit_band_base + bit_word_offset
 * where:
 * 	+ bit_word_offset: the position of the target bit in the bit-band memory region
 * 	+ bit_word_addr: the address of the word in the alias memory region that maps to the target bit
 *  + bit_band_base: the starting address of the alias region
 *  + byte_offset: the number of byte in the bit-band region that contains the targeted bit
 *  + bit_number: is the bit position (0-7) of the targeted bit
 */

/* Bit band SRAM definitions */
#define BITBAND_SRAM_REF   0x20000000
#define BITBAND_SRAM_BASE  0x22000000

#define BITBAND_SRAM(a,b) ((BITBAND_SRAM_BASE + ((a-BITBAND_SRAM_REF)<<5) + (b<<2)))  // Convert SRAM address

/* Bit band PERIPHERAL definitions */
#define BITBAND_PERI_REF   0x40000000
#define BITBAND_PERI_BASE  0x42000000

#define BITBAND_PERI(a,b) ((BITBAND_PERI_BASE + ((a-BITBAND_PERI_REF)<<5) + (b<<2)))  // Convert PERI address

/* Basic bit band function definitions */
#define BITBAND_SRAM_ClearBit(a,b)	(*(volatile uint32_t *) (BITBAND_SRAM(a,b)) = 0)
#define BITBAND_SRAM_SetBit(a,b)	(*(volatile uint32_t *) (BITBAND_SRAM(a,b)) = 1)
#define BITBAND_SRAM_GetBit(a,b)	(*(volatile uint32_t *) (BITBAND_SRAM(a,b)))

#define BITBAND_PERI_ClearBit(a,b)	(*(volatile uint32_t *) (BITBAND_PERI(a,b)) = 0)
#define BITBAND_PERI_SetBit(a,b)	(*(volatile uint32_t *) (BITBAND_PERI(a,b)) = 1)
#define BITBAND_PERI_GetBit(a,b)	(*(volatile uint32_t *) (BITBAND_PERI(a,b)))


#endif /* BITBAND_H_ */
