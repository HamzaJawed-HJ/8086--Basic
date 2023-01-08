.model small
.stack 100h
.data

v1 db '1'
v2 db '?'
v3 db 'HELLO $'

.code
main proc
          mov ax,@data
          mov ds,ax
          
          mov dx,offset v3
          
          mov ah,9
          int 21h
          
main endp
end



