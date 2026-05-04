.model small
.stack 100h
.data
num1 db ?
num2 db ?
num3 db ?
sum  db ?
.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov ah, 01h
    int 21h
    sub al, '0'
    mov num1, al

    
    mov ah, 01h
    int 21h
    sub al, '0'
    mov num2, al

    
    mov ah, 01h
    int 21h
    sub al, '0'
    mov num3, al

    
    mov al, num1
    add al, num2
    add al, num3
    mov sum, al

    
    add sum, '0'
    mov dl, sum
    mov ah, 02h
    int 21h

    
    mov ah, 4Ch
    int 21h
main endp
end main
