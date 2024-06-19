ORG 100H

.data
     str DB 'The lAzY brown fOx jumps on the qUick dogs back $'
     length DW 2FH
     Subsitute MACRO
                        CMP DX,0
                        JZ Contiune
                        ADD AL,20H
                        ; Hexadecimal Range: 41H to 5AH (A-Z)
                        ; Hexadecimal Range: 61H to 7AH (a-z)
                        MOV str[SI],AL
     ENDM
.code
    CALL ToLowerCase
    CALL Output
    HLT

   ToLowerCase PROC
                    XOR SI,SI
                    MOV CX,length
                    MainLoop:
                               MOV AL, str[SI]
                               XOR DX,DX    ; using DX as a Flag to indicate if it needs to do a substitution
                               CALL Check
                               Subsitute
                          Contiune:
                               INC SI
                               LOOP MainLoop
                               RET

   ENDP

   Check PROC
                   CMP AL,41H
                   JL notValid
                   CMP AL,5AH
                   JG notValid
                   INC DX
                   notValid:
                            RET
   ENDP
   Output PROC
            LEA SI, str
            MOV CX, length
            write_loop:
                LODSB            ; Load byte at DS:SI into AL and increment SI
                MOV DL, AL       ; Move the character to DL for output
                MOV AH, 2        ; Function 2 - Write character to standard output
                INT 21h
                LOOP write_loop
   ENDP




