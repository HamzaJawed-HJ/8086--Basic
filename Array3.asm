include 'emu8086.inc'
.model small
.stack 100h
.data        
arr db 4 dup(?)

.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov cx,4
        mov si,offset arr
        
        print 'Enter four values in array:'
        
        loop1:
              
              mov ah,1
              int 21h
              
              mov [si],al
              inc si
              loop loop1
              
        mov dl,10
        mov ah,2
        int 21h
        
        mov dl,13
        mov ah,2
        int 21h
        
        
        mov cx,4
        mov si,offset arr
        loop2:
              mov dl,[si]
              mov ah,2
              int 21h
              
             
              
              inc si
              loop loop2
              
              
        
        mov ah,4ch
        int 21h
    
main endp
end main

