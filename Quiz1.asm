include "EMU8086.inc"
.model small
.stack 100h
.data
M db 10
D db ?
E db ?
F db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    cmp M,10
    je D1
    
    cmp M,15
    je E1
    
    cmp M,20
    je F2
    
    cmp M,25
    je A2
    
    
    D1:
    mov bl,'4'
    mov D,bl
    mov E,bl 
    mov bl,'2'
    mov F,bl
    jmp print
    jmp Terminate
    
    E1:
    mov bl,'6'
    mov D,bl
    mov E,bl
    mov bl,'3'
    mov F,bl
    jmp print
    jmp Terminate
    
    F2:
    mov bl,'8'
    mov D,bl
    mov E,bl
    mov bl,'4'
    mov F,bl
    jmp print
    jmp Terminate
    
    A2:
    mov bl,10
    mov D,bl
    mov E,bl
    mov bl,'5'
    mov F,bl
    jmp print
    jmp Terminate
    
    
    print:
    print 'The memory in drive D is:'
    mov dl,D
    mov ah,2
    int 21h
    
    print 'The memory in drive E is:'
    mov dl,E
    mov ah,2
    int 21h
    
    print 'The memory in drive F is:'
    mov dl,F
    mov ah,2
    int 21h
    
    jmp Terminate
    
    Terminate:
    end
    
    mov ah,4ch
    int 21h
    
main endp
    
