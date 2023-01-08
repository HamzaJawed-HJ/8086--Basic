addition macro p1,p2
    mov bl,p1
    mov ah,p2
    add bl,ah
    mov ah,2
    mov dl,bl
    sub dl,30h
    int 21h
endm

.model small
.stack 100h
.data
msg1 db '3'
msg2 db '2'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    addition msg1,msg2
    
  
    
    
main endp
end main