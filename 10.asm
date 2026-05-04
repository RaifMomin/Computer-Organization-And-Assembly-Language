.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

   
    mov ah, 08h
    int 21h
    sub al, '0'
    mov bl, al
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

  
    mov dl, '-'
    mov ah, 02h
    int 21h

    
    mov ah, 08h
    int 21h
    sub al, '0'
    mov bh, al
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    
    mov dl, '='
    mov ah, 02h
    int 21h

    
    mov al, bl
    sub al, bh
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    
    mov ah, 4Ch
    int 21h
main endp
end main

