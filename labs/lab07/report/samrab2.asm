%include 'in_out.asm'
; -------- Объявление переменных
section .data
msgx db 'Введите x: ',0h
msga db 'Введите a: ',0h
msgf db 'Значение функции: ',0h
section .bss
x resb 10
a resb 10
rez resb 10
section .text
global  _start
_start:
; -------- Считывание числа x и превращение его в число
mov eax,msgx
call sprint
mov ecx,x
mov edx,10
call sread
mov eax,x
call atoi
mov [x],eax
; -------- Считывание числа a и превращение его в число
mov eax,msga
call sprint
mov ecx,a
mov edx,10
call sread
mov eax,a
call atoi
mov [a],eax
; -------- Расчет значения функции
mov eax,[x]
cmp eax,2
ja _else
mov eax,[a]
mov ebx,3
mul ebx
mov [rez],eax

_else:
add eax,-2
mov [rez],eax

fin:
mov eax, msgf
call sprint
mov eax,[rez]
call iprintLF
call quit
