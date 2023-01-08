.model small
.stack 100h
.data
.code
main proc
   
  mov ah,1
  int 21h
  
  mov dl,3
  add dl,48

  
  cmp al,dl
  
  je Equals
  jne Notequals


Equals:
mov dl,'T'
mov ah,2
int 21h
jmp Terminate



Notequals:
mov dl,'F'
mov ah,2
int 21h
jmp Terminate

 


Terminate:
end





   
    
  mov ah,4ch
  int 21h    
   
    
  
    
    
    
    
main endp
end main