.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 1          

outer:
    mov bx, cx         

inner:
    mov dl, '*'
    mov ah, 02h
    int 21h
    dec bx
    cmp bx, 0
    jne inner

   
    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h

    inc cx             
    cmp cx, 6          
    jne outer

    mov ah, 4Ch        
    int 21h
main endp
end main
