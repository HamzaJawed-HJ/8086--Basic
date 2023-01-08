printfunc macro p1 
    mov ah,2
    mov dl,bh
    sub dl,30h
    int 21h
    
endm

addition macro p2,p3
    mov bl,p2
    mov bh,p3
    add bh,bl
    
    printfunc bh
    
endm

.model small
.stack 100h
.data
var1 db '3'
var2 db '1'
sum db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    addition var1,var2
    
    
main endp
end main

