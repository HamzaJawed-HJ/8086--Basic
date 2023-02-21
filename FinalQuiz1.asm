.MODEL SMALL
.STACK 100H
 .DATA
    MSG1 DB 'PRESS "a" LOWER CASE |  $'
    MSG2 DB 'PRESS "0" NUMBERS   |  $'
    MSG3 DB 'PRESS "A"  UPPER CASE ALPHABAT |  $'
    PROMPT  DB  'Enter the digit : $'
    MSG     DB  'The entered digit is : $'
.CODE

MAIN PROC  
     MOV AX, @DATA                ; initialize DS
     MOV DS, AX 
     
     LEA DX, MSG1               ; load and print MSG1
     MOV AH, 9
     INT 21H
     
     LEA DX, MSG2               ; load and print MSG2
     MOV AH, 9
     INT 21H
     
     LEA DX, MSG3               ; load and print MSG3
     MOV AH, 9
     INT 21H

          
     LEA DX, PROMPT               ; load and print PROMPT
     MOV AH, 9
     INT 21H

     MOV AH, 1                    ; read a character
     INT 21H

     MOV BL, AL                   ; save the input character into BL

     MOV AH, 2                    ; carriage return
     MOV DL, 0DH
     INT 21H

     MOV DL, 0AH                  ; line feed
     INT 21H

     LEA DX, MSG                  ; load and print MSG
     MOV AH, 9
     INT 21H
     
         CMP BL,48                   ;ASCII CODE OF "0"
     JBE @NEGATIVE                                    
     
         CMP BL,97                   ;ASCII CODE OF "a"
     JBE @ZERO
     
         CMP BL,65                   ;ASCII CODE OF "A"
     JBE @POSITIVE                 
          
         
@NEGATIVE:
                     
     MOV CX, 10                  
     MOV AH, 2                    
     MOV DL, 48                   
 
     @LOOP:                       ; loop label
       INT 21H                    ; print character
 
       INC DL                     ; increment DL to next ASCII character
       DEC CX                     ; decrement CX
    JNZ @LOOP                    
 
     MOV AH, 4CH                  ; return control to DOS
     INT 21H
JMP @DISPLAY                      ; jump to label @DISPLAY

         
@ZERO:  
         
     MOV CX, 26                   ; initialize CX
              
     MOV DL, 97                  
 
     @LOOP2:                       ; loop start 
       MOV AH, 2                       
       INT 21H                    ; print character
 
       INC DL                     ; increment DL to next ASCII character
       DEC CX                     ; decrement CX
     JNZ @LOOP2                   
 
     MOV AH, 4CH                  ; return control to DOS
     INT 21H
JMP @DISPLAY                      ; jump to label @DISPLAY

         
@POSITIVE:                   ; jump label
         
    MOV BL,65
    MOV CL,26
PRINT2:

    MOV AH,2
    MOV DL,BL
    INC BL
    DEC CL
    INT 21H

 JNZ PRINT2        ;The JNZ instruction transfers control to the 
                  ;specified address if the value in the accumulator is not 0.
   MOV AH,4CH
   INT 21H  
JMP @DISPLAY               ; jump to label @DISPLAY
               
     
     @DISPLAY:                    ; jump label
       MOV AH, 2                  ; print the character
       INT 21H

     MOV AH, 4CH                  ; return control to DOS
     INT 21H
     
MAIN ENDP
END MAIN