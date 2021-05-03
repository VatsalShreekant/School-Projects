//conditional execution code example

/*#include "LPC17xx.h"                    // Device header

int main(void){
	int r1 = 1, r2 = 0;
	
	while(r1 <= 0x07){
		if((r1 - r2) > 0){
		  r1 = r1 + 2;
	}
		else{
			r2 = r2 + 1;
		}
	}
	return 0;
}*/


 //barrel shifter code
#include "LPC17xx.h"
#define ADDRESS(x) (*((volatile unsigned long *)(x)))
#define BitBand(x, y) 	ADDRESS(((unsigned long)(x) & 0xF0000000) | 0x02000000 |(((unsigned long)(x) & 0x000FFFFF) << 5) | ((y) << 2))
#define GPIO1_LED31 (*((volatile unsigned long*)0x233806FC))
#define GPIO2_LED2 (*((volatile unsigned long *) 0x23380A88))
#include <string.h>
#include <stdio.h>
int main(void){
	char text[10];
		int r1 = 1, r2 = 1, r3 = 2;
	sprintf(text, "Hello");
volatile unsigned long * GPIO1_LED28 ;
volatile unsigned long * GPIO1_LED29 ;
volatile unsigned long * GPIO2_LED4 ;
	GPIO1_LED28 = &BitBand(&LPC_GPIO1->FIOPIN1, 28);
	GPIO2_LED4 = &BitBand(&LPC_GPIO2->FIOPIN0, 4);

while(1){	
if((r1 - r2) < r3){
				printf("bit banding\n");
				GPIO2_LED2 = 1;//LED P2.2 ON using BB
				GPIO1_LED31 = 1;//LED P1.31 ON using BB
				//bit banding
				r1 += 1; //math for conditional execution
	
			}else if((r1 - r2) > r3){
				printf("function mode\n");
				*GPIO2_LED4 = 1;//LED P1.29 ON using function
				*GPIO1_LED28 = 1;//LED P1.28 ON using function
				//function mode
				r1 = 2;

			}else{
				printf("mask mode\n");
				LPC_GPIO1->FIOPIN |=  ( 1 << 29);
				LPC_GPIO2->FIOPIN |=  ( 1 << 3);
				//mask mode
				r1 += 3;

			}	
	int i, j;
		for(i = 0; i < 2000; i++){
		for(j = 0; j < 2000; j++);
	}
	
	LPC_GPIO2->FIOPIN &=  ~( 1 << 3);
	LPC_GPIO2->FIOPIN &=  ~( 1 << 29);
	*GPIO1_LED28 = 0;
	*GPIO1_LED29 = 0;
	GPIO2_LED2 = 0;
	GPIO1_LED31 = 0;
}
/*	
//bit band mode
GPIO1_LED31 = 1 ; // on
GPIO1_LED31 = 0 ; // o f f

//function mode
GPIO1_LED28 = &BitBand(&LPC_GPIO1->FIOPIN1, 28);
GPIO1_LED28 = &BitBand(&LPC_GPIO1->FIOPIN1, 28);
*GPIO1_LED28 = 1 ; // on
*GPIO1_LED28 = 2 ;
*/
//masking mode
// LPC_GPIO1->FIOPIN &=  ~( 1 << 29);
// LPC_GPIO2->FIOPIN &=  ~( 1 << 3);
}
