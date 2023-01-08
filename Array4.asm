include 'emu8086.inc'
.model small
.stack 100h
.data
arr db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    print 'Enter the size of your array:'
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    mov cx,bx
    mov si,offset arr
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    print 'Enter the values of array:'
    
    l1:
    mov ah,1
    int 21h
    
    mov [si],al
    inc si
    loop l1
    
            
    mov dl,10
    mov ah,2
    int 21h
        
    mov dl,13
    mov ah,2
    int 21h
    
    print 'The values in array are:'
    
    mov cx,bx
    mov si,offset arr
    
    l2:
    mov dl,[si]
    mov ah,2
    int 21h
    inc si
    loop l2
    
    
    print 'The sum of first and last digit of your array is:'
    
     Addfl:
     add arr[0],al
     mov ah,2
     mov dl,arr[]
     sub dl,30h
     int 21h
     
     print 'The subtraction of second and secondlast digit of your array is:'
     
     Subssl:
     dec al
     dec al
     sub al,arr[1]
     mov dl,al
     add dl,30h
     mov ah,2
     int 21h
     
    
    
    mov ah,4ch
    int 21h
    
main endp
end main







