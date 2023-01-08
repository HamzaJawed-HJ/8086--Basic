.model small
.stack 100h
.code
main proc
          mov ah,01h
          int 21h
          mov bl,al
          
          mov ah,01h
          int 21h
          mov bh,al
          
          sub bl,bh
          add bl,48
          
          mov ah,02h
          mov dl,bl
          int 21h
          
main endp

