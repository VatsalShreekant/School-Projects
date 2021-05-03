#include <stdio.h>                                 
#include <ctype.h>                   
#include <string.h>    
#include <math.h>
#include "cmsis_os.h"
#include "RTL.H"  
#include "LPC17xx.H"           
#include "GLCD.h"

#define __FI        1                   
#define __USE_LCD   0 										//uncomment for DEM0

/*----------------------------------------------------------------------------
*      Lab 3: Scheduling Multithreaded Applications with RTX & uVision
*			 Vatsal Shreekant, student id: 500771363
 *---------------------------------------------------------------------------*/
#define PI 3.142

double factor;

void threadA (void const *argument); 																					// thread function
void threadB (void const *argument); 
void threadC (void const *argument); 
void threadD (void const *argument); 
void threadE (void const *argument); 


osThreadId id_Thread_A, id_Thread_B, id_Thread_C, id_Thread_D, id_Thread_E; 	// thread id

osThreadDef (threadA, osPriorityAboveNormal, 1, 0); 													//priority #2
osThreadDef (threadB, osPriorityBelowNormal, 1, 0); 													//priority #3
osThreadDef (threadC, osPriorityHigh, 1, 0); 																	//priority #1
osThreadDef (threadD, osPriorityAboveNormal, 1, 0); 													//priority #2
osThreadDef (threadE, osPriorityBelowNormal, 1, 0); 													//priority #3

int Init_Thread (void) {

 id_A = osThreadCreate (osThread(threadA), NULL);   													// create threads
 id_B = osThreadCreate (osThread(threadB), NULL);
 id_c = osThreadCreate (osThread(threadC), NULL);
 id_D = osThreadCreate (osThread(threadD), NULL);
 id_E = osThreadCreate (osThread(threadE), NULL);
  
  return(0);
}


__task void threadA (void const *arg) {
 char out[20];
 int A = 0;
 int x = 0;
 for ( x=0; x<257; x++){ 
  A = A + (x + (x+2));
  os_tsk_pass() ;																															//Function that passes control to the next task of the same priority in the ready queue
 }


}

__task void threadB (void const *arg) {
  float B = 0;
  char out[20];

 int i = 0;
 factor=1;
 for( i = 1; i<17; i++){
  factor = factor*i;
  B = B + pow(2,i)/factor;
  os_tsk_pass() ;																															//Function that passes control to the next task of the same priority in the ready queue
 }


}

__task void threadC (void const *arg) {
 float C = 0;
  char out[20];

 int n=0;
 for ( n=1; n<17; n++){
  C = C + (n+1)/n;
 }

}

__task void threadD (void const *arg) {
 float D = 0;
  char out[20];

 int m=0;
 factor=1;
 for ( m=0; m<6; m++){
  factor = factor*m;
  if(factor == 0){
   factor=1;
  }
  else{
  os_tsk_pass() ;																															//Function that passes control to the next task of the same priority in the ready queue
  D = D + pow(5, m)/(double)factor;
  }
 }

}

__task void threadE(void const *arg) {
 int E = 0;
 char out[20];

 int p=0;
 int radius=1;
 for (p=1; p<13; p++){
  E = E + p*PI*(pow(radius, 2));
  os_tsk_pass() ;																															//Function that passes control to the next task of the same priority in the ready queue
 }

}


