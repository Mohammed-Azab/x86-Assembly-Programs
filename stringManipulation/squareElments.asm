ORG 100H

.data
    arr1 DB 2,7,19,4,7,8,44,0,70,100,11,23
    arr2 DB 12 DUP(?)
    length DW 0CH

    SquareElements MACRO a,b,c
                            MOV SI, a
                            MOV DI, b
                            MOV CX, c
                            MainLoop:
                                      XOR AX,AX
                                      MOV AL,[SI]
                                      INC SI
                                      SquareAndStore AL
                                      LOOP MainLoop

    ENDM

    SquareAndStore MACRO x
                            MUL AX
                            MOV [DI],AX
                            INC DI
    ENDM

.code
    MOV SI, OFFSET arr1
    MOV DI, OFFSET arr2
    MOV CX, length
    SquareElements SI,DI,CX
    HLT




