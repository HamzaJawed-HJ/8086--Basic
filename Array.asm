.model small
.stack 100h
.data
ARR db 1,2,3,4,5
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,0
    mov dl,ARR[si]
    add dl,30h
    mov ah,2
    int 21h
    
    inc dl
    mov ah,2
    int 21h
    
    inc dl
    mov ah,2
    int 21h
    
    inc dl
    mov ah,2
    int 21h
    
    inc dl
    mov ah,2
    int 21h
    
    

main endp
end main

