include 'emu8086.inc'
.model small
.stack 100h
.data
msg1 db 0ah,0adh,'In decimal it is:1'
c1 db ?,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    print 'Enter a hexa digit:'
    mov ah,1
    int 21h
    sub al,11h
    mov c1,al
   
   
    mov ah,9
    mov dx, offset msg1
    int 21h
    
    
main endp
end main
  


