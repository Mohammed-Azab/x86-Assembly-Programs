ORG 100H

   .data
   str DB 'exersice'
   length DB 08H
   numberOfOccurance DB 0
.code
    XOR DX,DX
    XOR SI,SI
    MOV CL, length

    TheLoop:
            MOV AL,str[SI]
            INC SI
            CMP AL,'e'
            JE increment
         contiune:
            LOOP TheLoop
            RET

    increment:
                INC DX
                JMP contiune
