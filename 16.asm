.model small
.stack 100h
.data 
.code
main proc
    mov cx, 5          

input_loop:
    mov ah, 01h        
    int 21h            

    loop input_loop    

    mov ah, 4Ch        
    int 21h    
   
   main endp
end main
