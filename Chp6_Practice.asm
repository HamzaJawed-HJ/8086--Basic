include 'EMU8086.INC'
.model small
.stack 100h
.data
.code
main proc
    mov dl,'?'
    mov ah,2
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    mov ah,1
    int 21h
    mov cl,al
    
    cmp bl,cl
    jge  Switch
    jmp Display
    
    
    Switch:
    xchg cl,bl
    
    
    Display:
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    mov dl,bl
    int 21h
    mov dl,cl
    int 21h
    
    
    out1:
    mov ah,4ch
    int 21h
    
main endp
end main


