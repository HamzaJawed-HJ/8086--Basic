.model small
.stack 100h
.code
main proc
          mov bh,3
          mov bl,5
          sub bl,bh
          add bl,48
          
          mov ah,02h
          mov dl,bl
          int 21h
          
 main endp