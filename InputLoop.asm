.model small
.stack 100h
.data
msg db 0DH,0AH,"SZABIST $"
obj dw "?"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov b.obj,al
    sub obj,48
    
    
   
    
    mov ah,9
    mov cx,obj
    
    print:
    
    int 21h
    loop print
    mov ah,4ch
    int 21h
    
   
main endp



