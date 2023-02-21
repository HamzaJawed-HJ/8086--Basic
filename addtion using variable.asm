.model small
.stack 100h
.data 
v1 db "this is string $"
v2 db "?"
v3 db "?"


.code
main proc
    mov ax,@data
    mov ds,ax
        
    
    mov v2,4
    add v2,48
    mov bl,v2
    mov dl,bl
    mov ah,02h
    int 21h   
    
    mov al,'+'
    mov dl,al
    mov ah,02h
    int 21h
    
    
    
    mov v3,3
    add v3,48
    mov bh,v3
    mov dl,bh
    mov ah,02h
    int 21h  
    

    mov al,'='
    mov dl,al
    mov ah,02h
    int 21h
             
    add v3,bl
    sub v3,48
    mov dl,v3
    mov ah,02h
    int 21h  
             
             
    
    
    
    
    
    


main endp
end