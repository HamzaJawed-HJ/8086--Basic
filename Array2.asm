.model small
.stack 100h
.data
ARR db 1,2,3,4,5
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,5
    mov si,0
    mov ah,2
    
    Output:
    mov dl,ARR[si]
    add dl,30h
    int 21h
    inc si
    
    
    loop Output


main endp
end main

