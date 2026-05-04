.model small
.stack 100h

.data
msg1 db 'Enter characters: $'
msgV db 13,10,'Vowels: $'
msgC db 13,10,'Consonants: $'
msgR db 13,10,'Press Y to run again or ESC to exit$'

vowels db 0
cons   db 0

.code
main proc
start:
    mov ax,@data
    mov ds,ax

    mov vowels,0
    mov cons,0

    mov dx,offset msg1
    mov ah,9
    int 21h

read:
    mov ah,1
    int 21h
    cmp al,13
    je show

    cmp al,'A'
    je isv
    cmp al,'E'
    je isv
    cmp al,'I'
    je isv
    cmp al,'O'
    je isv
    cmp al,'U'
    je isv
    cmp al,'a'
    je isv
    cmp al,'e'
    je isv
    cmp al,'i'
    je isv
    cmp al,'o'
    je isv
    cmp al,'u'
    je isv

    inc cons
    jmp read

isv:
    inc vowels
    jmp read

show:
    mov dx,offset msgV
    mov ah,9
    int 21h

    mov al,vowels
    add al,30h
    mov dl,al
    mov ah,2
    int 21h

    mov dx,offset msgC
    mov ah,9
    int 21h

    mov al,cons
    add al,30h
    mov dl,al
    mov ah,2
    int 21h

    mov dx,offset msgR
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    cmp al,'Y'
    je start
    cmp al,27
    je exit
    jmp start

exit:
    mov ah,4Ch
    int 21h
main endp
end main
