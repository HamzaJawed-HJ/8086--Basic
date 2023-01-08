include 'emu8086.inc'
.model small
.stack 100h
.data
msg2 db ?
msg3 db ?
msg4 db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
   mov dl,'?'
   mov ah,2
   int 21h
   
   mov ah,1
   int 21h
   mov msg2,al
   mov ah,1
   int 21h
   mov msg3,al
   
   add al,msg2
   sub al,30h
   mov msg4,al
   
   mov dl,10
   mov ah,2
   int 21h
   mov dl,13
   mov ah,2
   int 21h
    
   print 'The sum of'
   mov dl,msg2
   mov ah,2
   int 21h
   print 'and'
   mov dl,msg3
   mov ah,2
   int 21h
   print 'is'
   mov dl,msg4
   mov ah,2
   int 21h 
    
    
    mov ah,4ch
    int 21h
    
main endp
end main

