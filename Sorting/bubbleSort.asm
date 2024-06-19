ORG 100H

.data
    arr DB 10 DUP(0)
    length DW 0AH
    
    ;SI is i
    ;DI is j

.code
start:
    
    LEA DI, arr
    MOV CX, length
    
    ; read from the user
    LEA DI, arr
    MOV CX,10
    read_loop:
    MOV AH, 1
    INT 21h
    STOSB
    LOOP read_loop

    ; Sort (bubble sort)
    MOV CX, length
    DEC CX
    OuterLoop:
        XOR SI, SI
        MOV DI, CX
        InnerLoop:
            CMP SI, DI
            JE outOFInnerLoop
            
            MOV AL, arr[SI]
            MOV BL, arr[SI + 1]
            CMP AL, BL
            JLE contiune  ; No need to swap if AL <= BL
            
            ; Swap elements
            MOV arr[SI], BL
            MOV arr[SI + 1], AL
            
        contiune:
            INC SI
            JMP InnerLoop
            
        outOFInnerLoop:
            LOOP OuterLoop
            HLT
