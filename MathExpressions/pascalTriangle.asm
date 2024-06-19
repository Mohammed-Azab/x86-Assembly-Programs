include 'emu8086.inc'      ;include emu8086 library to use Print Functions
ORG 100h                   ;this directive required for a simple 1 segment .com program.
.data
    newLineStr db 0Dh, 0Ah, '$' ;

.code
    MAIN PROC
    CMP CX,0
    JZ Terminate
    MOV SI,CX            ;number of rows
    MOV DI,0          ;row number
    MOV BP,0          ;column number
    DEC BP            ;DEC BP to INC it in loop

    MainLoop:
        INC BP                     ; set BP to current column number

        MOV AX,DI                  ; set AX to current row number to calculate its factorial
        CALL factorial_calc
        MOV DS,AX                  ;N!


        MOV AX,BP                  ; set AX to current column number to calculate its factorial
        CALL factorial_calc
        MOV ES,AX                  ;K!

        MOV AX,DI
        SUB AX,BP                  ; calculate n-k
        CALL factorial_calc        ;calculate (n-k)!

        MOV CX,ES
        MUL CX                     ;K! N-K!

        MOV CX,AX
        MOV AX,DS
        DIV CX                     ;Calculate n!/((k!)*(n-k)!)
        CALL PRINT_NUM             ;Print the Pascal Number
        MOV AH,2H
        MOV DX,20H                 ;print a space
        INT 21H                    ;to print a character
        CMP DI,BP                  ;if column number eguals row number so it must move to next row
        JNZ MainLoop                  ;if not so it should repeat calculation in current row
        JMP NewLine

    NewLine:
        MOV AH,2H
        MOV DX,0AH     ;print new line
        INT 21H
        MOV DX,13      ;print carriage return
        INT 21H
        MOV BP,0000    ;set column number to 0
        DEC BP
        INC DI
        CMP SI,DI      ;if current row number equals row number, it will stop executing
        JE Terminate
        JMP MainLoop

    Terminate:
        HLT

     MAIN ENDP


    ;Define functions
    DEFINE_SCAN_NUM                      ;to get number as a input from user
    DEFINE_PRINT_NUM                     ;to print a number
    DEFINE_PRINT_NUM_UNS                 ;required for PRINT_NUM
    DEFINE_PRINT_STRING                  ;to print string


    factorial_calc proc
        MOV CX,AX
        MOV AX,1
        CMP CX,0
        JE RETURN
        FAC:
        MUL CX
        CMP CX,01
        LOOPNE FAC
        RETURN:
        RET
        factorial_calc ENDP

   HLT