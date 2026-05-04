.model small
.stack 100h
.data
msg1 db 'enter number : $'
msg2 db 'output is : $'
.code
main proc
    
    mov ax,@data
    mov ds,ax  
    
    mov dx, offset msg1
    mov ah,9h
    int 21h
    
    call input
    
    call newline
    
    mov dx,offset msg2
    mov ah,9h
    int 21h
    
    call output
    
    mov ah,4ch
    int 21h
    
       
    
    main endp 
newline proc
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
    ret  
  newline endp
    
input proc
    mov ah,1
    int 21h 
    mov cl,al
    ret 
  input endp
    
output proc  
    mov dl,cl
    mov ah,2
    int 21h
    ret
   output endp
    
end main
