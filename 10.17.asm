; reverse a string 
.DATA
 MESSAGE DB "BSC CSIT$"
.CODE
START:
 MOV AX,DATA
 MOV DS,AX

 LEA SI,MESSAGE

 MOV CL,08H

 L1:MOV BX,[SI]
 PUSH BX
 INC SI
 LOOP L1

 MOV CL,05H
 L2:POP DX
 MOV AH,02H
 INT 21H
 LOOP L2

 MOV AH,4CH
 INT 21H
END START