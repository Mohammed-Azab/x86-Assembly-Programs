ORG 100H

.data
     buffer DB 10 DUP(?)
     str DB 'The lAzY brown fOx jumps on the qUick dogs back $'
     vowels DB 'aeoiuyAEOUIY$'
     length1 DW 2DH
     length2 DW 0CH
     i DW 0H 
     include isItVowels.inc 

.code
    MOV CX, length1
    XOR DX,DX
    XOR DI,DI
    XOR SI,SI

    MainLoop:
               CMP i, 10
               JZ quitMain
               MOV AL,str[SI]
               INC SI
               XOR DI,DI
               isItVowels
               subsitute
           contiune:
               XOR DX,DX
               LOOP MainLoop
               HLT
    quitMain :
            HLT

    subsitute MACRO
               CMP DX,0
               JZ contiune
               MOV DI,i
               MOV buffer[DI],BL
               INC i
    ENDM