.model small
.stack 100h
.data
    
    v1 db '1'
    v2 db '?'


.code
main proc
          mov ax,@data
          mov ds,ax
          
          mov v2,3
          mov dl,v2
          mov ah,02h
          int 21h
          
          mov v2,'3'
          mov dl,v2
          mov ah,02h
          int 21h
          
main endp
end
          

