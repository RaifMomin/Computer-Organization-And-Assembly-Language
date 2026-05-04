.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5
    mov dl, '0'

print:
    mov ah, 02h
    int 21h
    add dl, 2
    loop print

    mov ah, 4Ch
    int 21h
main endp
end main
