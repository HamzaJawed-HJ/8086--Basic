include 'emu8086.inc'
.model small
.stack 100h
.data
num1 db  ?
num2 db  ?
num3 db  ?
.code
main proc
    print 'Enter three initials:'
    mov ah,1
    int 21h
    mov num1,al
    int 21h
    mov num2,al
    int 21h
    mov num3,al
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,num1
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,num2
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,num3
    mov ah,2
    int 21h
    
    
    
    
    mov ah,4ch
    int 21h
    
main endp
end main