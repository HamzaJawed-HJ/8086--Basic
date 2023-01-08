.model small
.stack 100h
.data
v1 dw 1
v2 dw 2
v3 dw 3
v4 dw 4
v5 dw 5
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    push v1
    push v2
    push v3
    push v4
    push v5
    
    pop v1
    
    mov dx,v1
    add dx,48
    mov ah,2
    int 21h
    
    pop v2
    
    mov dx,v2
    add dx,48
    mov ah,2
    int 21h
    
    pop v3
    
    mov dx,v3
    add dx,48
    mov ah,2
    int 21h
    
    pop v4
    
    mov dx,v4
    add dx,48
    mov ah,2
    int 21h
    
    pop v5
    
    mov dx,v5
    add dx,48
    mov ah,2
    int 21h

