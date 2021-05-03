;*****************************************************************
;* This program illustrates how to use the assembler.            *
;* It adds together two 8 bit numbers and leaves the result      *
;* in the 'SUM' location.                                        *
;* Author: Vatsal Shreekant                                      *
;*****************************************************************

; export symbols
            XDEF Entry, _Startup            ; export 'Entry' symbol
            ABSENTRY Entry        ; for absolute assembly: mark this as application entry point



; Include derivative-specific definitions 
        INCLUDE 'derivative.inc' 


;**************************************************************
;*                 CODE SECTION : UNSIGNED MULTIPLY OPERATION                              *
;**************************************************************
            ORG   $3000
            
MULTIPLICAND  FCB   04;  FIRST NUMBER
MULTIPLIER    FCB   02;  SECOND NUMBER
PRODUCT       RMB   02;  RESULT OF MULTIPLICATION
  
;**************************************************************
;*                 THE ACTUAL PROGRAM STARTS HERE             *
;**************************************************************
            ORG $4000
Entry:
_Startup:
           LDAA MULTIPLICAND; GET THE FIRST NUMBER INTO ACCA
           LDAB MULTIPLIER;     GET THE FIRST NUMBER INTO ACCA
           MUL;             MULTIPLIES THE VALUE IN ACCUMULATOR A WITH THE VALUE ACCUMULATOR AND STORES IT IN A
           STD PRODUCT;      THE PRODUCT INTO DOUBLE ACCUMULATOR
           
           SWI;           BREAK TO THE MONITOR
           
;**************************************************************
;*                 Interrupt Vectors                          *
;**************************************************************
            ORG   $FFFE
            DC.W  Entry           ; Reset Vector

