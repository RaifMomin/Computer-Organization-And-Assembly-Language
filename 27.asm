.model small
.stack 100h

.data
msg db 'Enter string: $'
str db 20 dup('$') 
.code
main:
mov ax, @data
mov ds, ax 

mov dx , offset msg
mov ah,9h
int 21h

mov si,0

input:
mov ah,1
int 21h

cmp al,13
je end 

mov str[si],al
inc si
jmp input



end:
mov ah,4ch
int 21h

int 21h
end main