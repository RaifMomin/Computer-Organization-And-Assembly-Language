.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5        

outer:
    mov dl, '#'
    mov ah, 02h
    int 21h

    mov bx, 3        

inner:
    mov dl, '*'
    mov ah, 02h
    int 21h
    dec bx
    cmp bx, 0
    jne inner

    loop outer

    mov ah, 4Ch
    int 21h
main endp
end main
