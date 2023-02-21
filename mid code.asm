.model small
.stack 100h
.data
    arr db ?
    msg1 db 0dh,0ah, " Enter Array length : $"
    msg2 db 0dh,0ah, " Enter value : $"
    msg3 db 0dh,0ah, " Array values : $"
    msg4 db 0dh,0ah, " Addition of 1 index and last index : $"
    msg5 db 0dh,0ah, " Substraction of 2 index and 2nd last index : $"
    msg6 db 0dh,0ah, " Print Remaining Array :{ $" 
    arr2 db ?

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    
    lea dx,msg1
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h
    sub al,48
    mov bl,al
    
    lea dx,msg2
    mov ah,09h
    int 21h

    mov cx,bx
    mov arr[si],bl
   
    input:    
    mov ah,01h
    int 21h
    mov arr[si],al
    inc si
    loop input
             
    lea dx,msg3
    mov ah,09h
    int 21h
             
    
    mov ah,02h
    mov dl,'{'
    int 21h
         
   
    mov cx,bx
    mov arr[si],bl
    mov si,-1
        
    output:
    inc si
    mov dl,arr[si]
    mov ah,02h
    int 21h
    
    mov ah,02h
    mov dl,','
    int 21h 
    
    loop output
    
    mov ah,02h
    mov dl,'}'
    int 21h 
    
     ;Addtion        
    lea dx,msg4
    mov ah,09h
    int 21h

    mov bl,arr[0]
    mov bh,arr[si]
    
    add bh,bl
    sub bh,48
    
    mov dl,bh
    mov ah,02h
    int 21h
    
     ;Substraction
    lea dx,msg5
    mov ah,09h
    int 21h

    mov bl,arr[1]
    mov bh,arr[si-1]
    
    sub bl,bh
    add bl,48
    
    mov dl,bl
    mov ah,02h
    int 21h
    ;copying data into another array
    
    
    
     ;PRINT Array
    
    lea dx,msg6
    mov ah,09h
    int 21h
    
    sub bx,4
    mov cx,bx
    mov arr2[si],bl
    mov si,2
    print:
    
    mov dl,arr2[si]
    mov ah,02h
    int 21h
    inc si
    
    loop print 
 
    
 
    main endp
end