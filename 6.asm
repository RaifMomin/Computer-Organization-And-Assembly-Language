.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    
    mov bl,al
    mov dl,bl
    add dl,32
    mov ah,2
    int 21h
    
    
    main endp
end main