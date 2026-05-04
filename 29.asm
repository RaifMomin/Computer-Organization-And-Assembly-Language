.model small
.stack 100h
.data
msg db 'HelloWorld$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset msg
    
    mov cx,10
    loop1:
    mov al,[si]
    push ax
    inc si
    loop loop1
    mov cx,10
    loop2:
    pop dx
    mov ah,2
    int 21h
    
    loop loop2
    
    mov ah,4ch
    int 21h
    
    
    main endp
end main