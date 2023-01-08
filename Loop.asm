.model small
.stack 100h
.data
obj db 0AH,0DH, "SZABIST $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov cx,10
    
    print:
    
   int 21h
   
   loop print
   
   mov ah,4ch
   int 21h
   
   main endp




