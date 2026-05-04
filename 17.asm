.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

  
    mov dl, '0'
    mov cx, 10
print:
    mov ah, 02h
    int 21h
    inc dl
    loop print

    mov ah, 4Ch
    int 21h
main endp
end main
