.model small
.stack 100h
.code
main proc
          mov bh,2
          mov bl,3
          add bl,bh
          add bl,48
          
          mov ah,02h
          mov dl,bl
          int 21h
          
main endp


