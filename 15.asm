.model small
.stack 100h
.data
            

msg1 db 'Name:RaifMomin$'
msg2 db 'Reg No. 2412351$'
msg3 db 'Email: raif@gmail.com$'
msg4 db 'Institue : Ssabist$ '
            
.code
main proc
    
    mov  ax,@data
    mov ds,ax             
         
    mov dx,offset msg1
    mov ah,9
    int 21h
          
    mov dl,10           
    mov ah,2
    int 21h
    
    mov dl,13            
    mov ah,2
    int 21h    
          
    mov dx,offset msg2
    mov ah,9
    int 21h
 
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dx,offset msg3
    mov ah,9
    int 21h   
 
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h  
    
    mov dx,offset msg4
    mov ah,9
    int 21h   
     
    mov ah,4ch
    int 21h  
      
    main endp
end main