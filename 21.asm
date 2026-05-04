.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 26
    mov dl, 'Z'

print:
    mov ah, 02h
    int 21h
    dec dl
    loop print

    mov ah, 4Ch
    int 21h
main endp
end main
