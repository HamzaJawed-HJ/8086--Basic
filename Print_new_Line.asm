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
          
          mov dl,10
          mov ah,02h
          int 21h
          mov dl,13
          mov ah,02h
          int 21h
          
          mov ah,02h
          mov dl,bl
          int 21h
          
          mov dl,10
          mov ah,02h
          int 21h
          mov dl,13
          mov ah,02h
          int 21h
          
          mov ah,02h
          mov dl,bh
          int 21h
          
main endp


