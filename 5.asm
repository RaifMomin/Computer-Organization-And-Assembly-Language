.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 4

input_loop:
    mov ah, 08h
    int 21h

    mov dl, '*'
    mov ah, 02h
    int 21h

    loop input_loop

    mov ah, 4Ch
    int 21h
main endp
end main
