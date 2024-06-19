ORG 100H

.data
        buffer DB 0,0,0,0,0,0,0,0,0,0
        length1 DW 0AH
        vowels DB 'aeoiu'
        length2 DW 05H
        i DW 0 
        allowableAttamp DW 99H

.code
            XOR DI,DI
            MOV CX,allowableAttamp
            read_loop:
            CMP DI,length1
            JE quit
            MOV AH, 1
            INT 21h
            CMP AL, '$'
            JE quit
            CALL Check
            LOOP read_loop 
            quit:
                    HLT
    Check PROC
                XOR SI,SI
                checkLoop:  
                            CMP SI,length2
                            JAE  return
                            CMP AL,vowels[SI]
                            JE store  
                   contiune:          
                            INC SI
                            JMP checkLoop
                store:
                     MOV SI ,i
                     INC i
                     INC DI
                     MOV buffer[SI],AL
                     return:
                            RET
                            
                            
     ENDP