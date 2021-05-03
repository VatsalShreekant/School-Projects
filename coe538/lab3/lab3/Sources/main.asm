*****************************************************************
* Displaying battery voltage and bumper states (s19c32) *
*****************************************************************

; Definitions
LCD_DAT     EQU PORTB                   ;LCD data port, bits - PB7,...,PB0
LCD_CNTR    EQU PTJ                     ;LCD control port, bits - PE7(RS),PE4(E)
LCD_E       EQU $80                     ;LCD E-signal pin
LCD_RS      EQU $40                     ;LCD RS-signal pin

; Variable/data section
            ORG $3850
BCD_BUFFER  EQU *                       ;The following registers are the BCD buffer area            
TEN_THOUS   RMB 1                       ;10,000 digit
THOUSANDS   RMB 1                       ;1,000 digit
HUNDREDS    RMB 1                       ;100 digit
TENS        RMB 1                       ;10 digit
UNITS       RMB 1                       ;1 digit
BCD_SPARE   RMB 2                       ;Extra space for decimal point and string terminator               
NO_BLANK    RMB 1                       ;Used in ’leading zero’ blanking by BCD2ASC

; Code section
            ORG $4000
Entry:
_Startup:
            LDS #$4000                  ;initialize the stack pointer
            JSR initAD                  ;initialize ATD converter
            JSR initLCD                 ;initialize LCD
            JSR clrLCD                  ;clear LCD & home cursor
            LDX                         ;#msg1 display msg1
            JSR putsLCD                 ;"
            LDAA #$C0                   ;move LCD cursor to the 2nd row
            JSR cmd2LCD
            LDX #msg2                   ;display msg2
            JSR putsLCD                 ;"

lbl         MOVB #$90,ATDCTL5           ;r.just., unsign., sing.conv., mult., ch0, start conv.
            BRCLR ATDSTAT0,$80,*        ;wait until the conversion sequence is complete

            LDAA ATDCTL4                    ;load the ch4 result into AccA
            LDAB #39                    ;AccB = 39
            MUL                         ;AccD = 1st result x 39
            ADDD #600                    ;AccD = 1st result x 39 + 600

            JSR int2BCD
            JSR BCD2ASC

            LDAA #$8C                    ;move LCD cursor to the 1st row, end of msg1
            JSR cmd2LCD                  ;"

            LDAA TEN_THOUS              ;output the TEN_THOUS ASCII character
            JSR putcLCD                 ;"
           
            LDAA THOUSANDS              ;output the THOUSANDS ASCII character        
            JSR putcLCD                 ;"
            
            LDAA '.'                    ;output the '.' ASCII character         
            JSR putcLCD         
           
            LDAA HUNDREDS               ;output the HUNDREDS ASCII character
            JSR putcLCD                 ;"
           
            LDAA #$CC                   ;move LCD cursor to the 2nd row, end of msg2
            JSR cmd2LCD                 ;"

            BRCLR PORTAD0,%00000100,bowON
            LDAA #$31                   ;output ’1’ if bow sw OFF
            BRA bowOFF
bowON       LDAA #$30                   ;output ’0’ if bow sw ON
bowOFF      JSR putcLCD

            LDAA  ' '                          ;output a space character in ASCII

            BRCLR PORTAD0,%000010000,sternON
            LDAA #$31                   ;output ’1’ if stern sw OFF
            BRA sternOFF
sternON     LDAA #$30                   ;output ’0’ if stern sw ON
sternOFF    JSR putcLCD

            JMP lbl
              
msg1        dc.b "Battery volt ",0
msg2        dc.b "Sw status ",0

; Subroutine section
initLCD    BSET  DDRB,%11110000    ; configure pins PS7,PS6,PS5,PS4 for output
           BSET  DDRJ,%11000000    ; configure pins PE7,PE6 for output
           LDY   #2000             ; wait for LCD to be ready
           JSR   del_50us          ;-"-
           LDAA  #$28              ; set 4-bit data, 2-line display
           JSR   cmd2LCD           ;-"-
           LDAA  #$0C              ; display on, cursor off, blinking off
           JSR   cmd2LCD           ;-"-
           LDAA  #$06              ; move cursor right after entering a character
           JSR   cmd2LCD           ;-"-
           RTS
clrLCD     LDAA  #$01              ; clear cursor and return to home position
           JSR   cmd2LCD           ;-"-
           LDY   #40               ; wait until "clear cursor" command is complete
           JSR   del_50us          ;-"-
           RTS
del_50us   PSHX                    ;2 E-clk
eloop:     LDX   #$46            ;2 E-clk -
iloop:     PSHA                  ;2 E-clk  |
           PULA                  ;3 E-clk  |
           PSHA                  ;2 E-clk  | 50us
           PULA                  ;3 E-clk  |
           NOP                   ;1 E-clk  |
           NOP                   ;1 E-clk  |
           DBNE  X,iloop         ;3 E-clk -
           DBNE  Y,eloop         ;3 E-clk
           PULX                  ;3 E-clk
           RTS                   ;5 E-clk
cmd2LCD    BCLR  LCD_CNTR,LCD_RS   ; select the LCD Instruction Register (IR)
           JSR   dataMov           ; send data to IR
           RTS
putsLCD    LDAA  1,X+               ; get one character from the string
           BEQ   donePS             ; reach NULL character?
           JSR   putcLCD
           BRA   putsLCD
donePS     RTS

putcLCD    BSET  LCD_CNTR,LCD_RS   ; select the LCD Data register (DR)
           JSR   dataMov           ; send data to DR
           RTS
dataMov    BSET  LCD_CNTR,LCD_E    ; pull the LCD E-sigal high
           STAA  LCD_DAT           ; send the upper 4 bits of data to LCD
           BCLR  LCD_CNTR,LCD_E    ; pull the LCD E-signal low to complete the write oper.
           LSLA                    ; match the lower 4 bits with the LCD data pins
           LSLA                    ;-"-
           LSLA                    ;-"-
           LSLA                    ;-"-
           BSET  LCD_CNTR,LCD_E    ; pull the LCD E signal high
           STAA  LCD_DAT           ; send the lower 4 bits of data to LCD
           BCLR  LCD_CNTR,LCD_E    ; pull the LCD E-signal low to complete the write oper.
           LDY   #1                ; adding this delay will complete the internal
           JSR   del_50us          ; operation for most instructions
           RTS
int2BCD    XGDX              ;Save the binary number into .X
           LDAA #0           ;Clear the BCD_BUFFER
           STAA TEN_THOUS
           STAA THOUSANDS
           STAA HUNDREDS
           STAA TENS
           STAA UNITS
           STAA BCD_SPARE
           STAA BCD_SPARE+1
*
        CPX #0 ;Check for a zero input
        BEQ CON_EXIT ;and if so, exit
*
        XGDX ;Not zero, get the binary number back to .D as dividend
        LDX #10 ;Setup 10 (Decimal!) as the divisor
        IDIV ;Divide: Quotient is now in .X, remainder in .D
        STAB UNITS ;Store remainder
        CPX #0 ;If quotient is zero,
        BEQ CON_EXIT ;then exit
*
        XGDX else ;swap first quotient back into .D
        LDX #10 ;and setup for another divide by 10
        IDIV
        STAB TENS
        CPX #0
        BEQ CON_EXIT
*
        XGDX ;Swap quotient back into .D
        LDX #10 ;and setup for another divide by 10
        IDIV
        STAB HUNDREDS
        CPX #0
        BEQ CON_EXIT
*
        XGDX ;Swap quotient back into .D
        LDX #10 ;and setup for another divide by 10
        IDIV
        STAB THOUSANDS
        CPX #0
        BEQ CON_EXIT
*
        XGDX ;Swap quotient back into .D
        LDX #10 ;and setup for another divide by 10
        IDIV
        STAB TEN_THOUS
*
        CON_EXIT RTS ;We’re done the conversion


BCD2ASC    LDAA #0 ;Initialize the blanking flag
           STAA NO_BLANK
*
C_TTHOU    LDAA TEN_THOUS ;Check the ’ten_thousands’ digit
           ORAA NO_BLANK
           BNE NOT_BLANK1
*
ISBLANK1   LDAA #’ ’ ;It’s blank
           STAA TEN_THOUS ;so store a space
           BRA C_THOU ;and check the ’thousands’ digit
*
NOT_BLANK1 LDAA TEN_THOUS ;Get the ’ten_thousands’ digit
           ORAA #$30 ;Convert to ascii
           STAA TEN_THOUS
           LDAA #$1 ;Signal that we have seen a ’non-blank’ digit
           STAA NO_BLANK
*
C_THOU     LDAA THOUSANDS ;Check the thousands digit for blankness
           ORAA NO_BLANK ;If it’s blank and ’no-blank’ is still zero
           BNE NOT_BLANK2
*
ISBLANK2   LDAA #’ ’ ;Thousands digit is blank
           STAA THOUSANDS ;so store a space
           BRA C_HUNS ;and check the hundreds digit
*
NOT_BLANK2 LDAA THOUSANDS ;(similar to ’ten_thousands’ case)
           ORAA #$30
           STAA THOUSANDS
           LDAA #$1
           STAA NO_BLANK
*       
C_HUNS     LDAA HUNDREDS ;Check the hundreds digit for blankness
           ORAA NO_BLANK ;If it’s blank and ’no-blank’ is still zero
           BNE NOT_BLANK3
*
ISBLANK3   LDAA #’ ’ ;Hundreds digit is blank
           STAA HUNDREDS ;so store a space
           BRA C_TENS ;and check the tens digit
*
NOT_BLANK3 LDAA HUNDREDS ;(similar to ’ten_thousands’ case)
           ORAA #$30
           STAA HUNDREDS
           LDAA #$1
           STAA NO_BLANK
*
C_TENS     LDAA TENS ;Check the tens digit for blankness
           ORAA NO_BLANK ;If it’s blank and ’no-blank’ is still zero
           BNE NOT_BLANK4
*
ISBLANK4   LDAA #’ ’ ;Tens digit is blank
           STAA TENS ;so store a space
           BRA C_UNITS ;and check the units digit
*
NOT_BLANK4 LDAA TENS ;(similar to ’ten_thousands’ case)
           ORAA #$30
           STAA TENS
*
C_UNITS    LDAA UNITS ;No blank check necessary, convert to ascii.
           ORAA #$30
           STAA UNITS
*
           RTS ;We’re done
initAD      MOVB #$C0,ATDCTL2           ;power up AD, select fast flag clear
            JSR del_50us                ;wait for 50 us
            MOVB #$00,ATDCTL3           ;8 conversions in a sequence
            MOVB #$85,ATDCTL4           ;res=8, conv-clks=2, prescal=12
            BSET ATDDIEN,$0C            ;configure pins AN03,AN02 as digital inputs
            RTS
            
; Interrupt vectors
 ORG   $FFFE
 FDB   Entry             ; Reset Vector
       