.model small
.stack 100h
.data
arr db 'A','B','C','D','E'


.code
main proc
    mov ax, @data
    mov ds, ax

    mov si, 0
    mov cx, 5

print_array:
    mov dl, arr[si]   
    mov ah, 02h       
    int 21h

    inc si            
    loop print_array

    mov ah, 4Ch
    int 21h
main endp
end main