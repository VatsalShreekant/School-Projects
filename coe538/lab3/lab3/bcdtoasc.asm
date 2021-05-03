*
***********************************************************************
BCD_BUFFER EQU * The following registers are the BCD buffer area
TEN_THOUS RMB 1 10,000 digit
THOUSANDS RMB 1 1,000 digit
HUNDREDS RMB 1 100 digit
TENS RMB 1 10 digit
UNITS RMB 1 1 digit
BCD_SPARE RMB 10 Extra space for decimal point and string terminator
NO_BLANK RMB 1 Used in ’leading zero’ blanking by BCD2ASC
****************************************************************
*               BCD to ASCII Conversion Routine
* This routine converts the BCD number in the BCD_BUFFER
* into ascii format, with leading zero suppression.
* Leading zeros are converted into space characters.
* The flag ’NO_BLANK’ starts cleared and is set once a non-zero
* digit has been detected.
* The ’units’ digit is never blanked, even if it and all the
* preceding digits are zero.
* Peter Hiscocks

BCD2ASC    LDAA #0 Initialize the blanking flag
           STAA NO_BLANK
*
C_TTHOU    LDAA TEN_THOUS Check the ’ten_thousands’ digit
           ORAA NO_BLANK
           BNE NOT_BLANK1
*
ISBLANK1   LDAA #’ ’ It’s blank
           STAA TEN_THOUS so store a space
           BRA C_THOU and check the ’thousands’ digit
*
NOT_BLANK1 LDAA TEN_THOUS Get the ’ten_thousands’ digit
           ORAA #$30 Convert to ascii
           STAA TEN_THOUS
           LDAA #$1 Signal that we have seen a ’non-blank’ digit
           STAA NO_BLANK
*
C_THOU     LDAA THOUSANDS Check the thousands digit for blankness
           ORAA NO_BLANK If it’s blank and ’no-blank’ is still zero
           BNE NOT_BLANK2
*
ISBLANK2   LDAA #’ ’ Thousands digit is blank
           STAA THOUSANDS so store a space
           BRA C_HUNS and check the hundreds digit
*
NOT_BLANK2 LDAA THOUSANDS (similar to ’ten_thousands’ case)
           ORAA #$30
           STAA THOUSANDS
           LDAA #$1
           STAA NO_BLANK
*       
C_HUNS     LDAA HUNDREDS Check the hundreds digit for blankness
           ORAA NO_BLANK If it’s blank and ’no-blank’ is still zero
           BNE NOT_BLANK3
*
ISBLANK3   LDAA #’ ’ Hundreds digit is blank
           STAA HUNDREDS so store a space
           BRA C_TENS and check the tens digit
*
NOT_BLANK3 LDAA HUNDREDS (similar to ’ten_thousands’ case)
           ORAA #$30
           STAA HUNDREDS
           LDAA #$1
           STAA NO_BLANK
*
C_TENS     LDAA TENS Check the tens digit for blankness
           ORAA NO_BLANK If it’s blank and ’no-blank’ is still zero
           BNE NOT_BLANK4
*
ISBLANK4   LDAA #’ ’ Tens digit is blank
           STAA TENS so store a space
           BRA C_UNITS and check the units digit
*
NOT_BLANK4 LDAA TENS (similar to ’ten_thousands’ case)
           ORAA #$30
           STAA TENS
*
C_UNITS    LDAA UNITS No blank check necessary, convert to ascii.
           ORAA #$30
           STAA UNITS
*
           RTS We’re done