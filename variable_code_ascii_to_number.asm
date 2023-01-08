.model small
.stack 100h
.data

v1 db '1'
v2 db '?'

.code
main proc
          mov ax,@data
          mov ds,ax
          
          mov v2,6
          add v2,48
          mov dl,v2
          mov ah,02h
          int 21h
          
main endp
end




