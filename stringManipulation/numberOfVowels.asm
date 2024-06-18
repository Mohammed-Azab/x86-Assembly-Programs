ORG 100H

   .data
   str DB 'this is a great but strange test'
   vowels DB 'aeoiuyAEOUIY'
   length1 DW 20H
   length2 DW 0CH

   numberOfOccurance DB 0
.code
    XOR DX,DX
    XOR SI,SI
    XOR DI,DI
    MOV CX, length1

    TheLoop:
            MOV AL,str[SI]
            INC SI
            XOR DI,DI
            CALL check
         contiune:
            CMP CX,0
            JZ END ; ist ein muss, damit CX kein Zero werden kann
            LOOP TheLoop
            RET

    increment:
                INC DX
                JMP contiune


    check PROC

        innerLoop:
                    CMP DI, length2
                    JE contiune
                    MOV BL,vowels[DI]
                    INC DI
                    CMP BL,AL
                    JZ increment
                    JMP innerLoop
    RET
    ENDP


    END:    RET
