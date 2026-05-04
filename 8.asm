.model small
.stack 100h
.data
.code
main proc
    mov al,5
    add al,3
    
    mov dl,al
    add dl,48
    
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    
    main endp
end main