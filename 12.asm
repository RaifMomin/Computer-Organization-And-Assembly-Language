.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 01h
    int 21h
    sub al, '0'     

    inc al            

    add al, '0'      
    mov dl, al
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main
