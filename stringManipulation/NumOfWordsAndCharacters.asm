ORG 100H

.data
    str DB 'Learning is a treasure$'
    length DW 15H
    numberOfCharacters DW 0H
    numberOfSpaces DW 0H
    numberOfWords DW 0H

.code
    XOR DI,DI
    XOR SI,SI
    XOR DX,DX ; will be used as a Flag if 1 then the word is over
    MOV CX,length
    MainLoop:
                MOV AL,str[SI]
                INC SI
                CALL CHECK
                LOOP MainLoop
                CALL FinalCheck
                XOR BX,BX
                MOV BX,numberOfSpaces
                XOR AX,AX
                MOV AX,length
                SUB AX,BX
                MOV numberOfCharacters,AX
                HLT

    CHECK PROC
                CMP AL, 20h ;if equals to space then the word is over
                JE wordIsOver
                MOV DX,0
                RET
    wordIsOver:
                INC numberOfWords
                MOV DX,1
                INC numberOfSpaces
                RET
    ENDP

    FinalCheck PROC
                    CMP DX,0
                    JZ finalTouch
                    RET
            finalTouch:
                         INC numberOfWords
                         RET
    ENDP