.model small
.stack 100h
.data
msg1 db 0ah,0dh, "Number is Equal$"
msg2 db 0ah,0dh, "Number is not Equal$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dl,'3'
    mov ah,1
    int 21h
    
    cmp al,dl
    jz l1
    jnz l2
    
    l2:
    mov dx,offset msg2
    mov ah,9
    int 21h
    jmp Terminate
    
    l1:
    mov dx,offset msg1
    mov ah,9
    int 21h
    jmp Terminate
            
            
            
    Terminate:
    end        
    
    mov ah,4ch
    int 21h
    
main endp
end main
    




