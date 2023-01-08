.model small
.stack 100h
.data
msg1 db "Hello $"
msg2 db 0ah,0dh, "World $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
        
main endp
end main
