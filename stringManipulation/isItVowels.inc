
isItVowels Macro

    TheLoop:
            CALL check
            RET

    increment:
                INC DX
                JMP quit
    check PROC

        innerLoop:
                    CMP DI, length2
                    JE quit
                    MOV BL,vowels[DI]
                    INC DI
                    CMP BL,AL
                    JZ increment
                    JMP innerLoop
    ENDP

    quit:
    ENDM



