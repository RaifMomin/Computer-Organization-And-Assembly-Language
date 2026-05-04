.model small  
.stack 100h   
.data
.code
main proc    
    
    mov dl,52h
    mov ah,2      
    int 21h
           
    mov dl,41h
    mov ah,2   
    int 21h
                      
    mov dl,49h
    mov ah,2   
    int 21h
               
    mov dl,46h
    mov ah,2   
    int 21h
               
    mov dl,4Dh
    mov ah,2  
    int 21h
               
    mov dl,4Fh
    mov ah,2   
    int 21h 
            
    mov dl,4Dh
    mov ah,2   
    int 21h
    
    mov dl,49h
    mov ah,2   
    int 21h
    
    mov dl,4Eh
    mov ah,2   
    int 21h
                     
            
    mov ah,4ch
    int 21h
              
    main endp
end main   
