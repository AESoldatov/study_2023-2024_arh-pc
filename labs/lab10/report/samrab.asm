%include 'in_out.asm'
SECTION .data
name db 'name.txt',0h
msg1  db 'Как Вас зовут? ', 0h ; Сообщение
msg2 db 'Меня зовут ', 0h;
SECTION .bss
input resb 80 ; переменная для вводимой строки
SECTION .text
global _start
_start:
mov eax,msg1
call sprint;
mov ecx, input
mov edx, 80
call sread

mov ecx,0777o
mov ebx,name
mov eax,8
int 80h


mov esi, eax


mov eax, input 
call slen 

mov edx,eax
mov ecx,msg2
mov ebx,esi
mov eax,4
int 80h

mov edx, eax
mov ecx, input
mov ebx, esi
mov eax, 4
int 80h

mov ebx, esi
mov eax, 6
int 80h
call quit
