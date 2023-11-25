%include 'in_out.asm'
; -------- Объявление переменных
section .data
msga db 'Введите A: ',0h
msgb db 'Введите B: ',0h
msgc db 'Введите C: ',0h
msgf db 'Наименьшее число: ',0h
section .bss
A resb 10
B resb 10
C resb 10
min resb 10
section .text
global  _start
_start:
; -------- Считывание числа А и превращение его в число
mov eax,msga
call sprint
mov ecx,A
mov edx,10
call sread
mov eax,A
call atoi
mov [A],eax
; -------- Считывание числа В и превращение его в число
mov eax,msgb
call sprint
mov ecx,B
mov edx,10
call sread
mov eax,B
call atoi
mov [B],eax
; -------- Считывание числа C и превращение его в число
mov eax,msgc
call sprint
mov ecx,C
mov edx,10
call sread
mov eax,C
call atoi
mov [C],eax
; -------- Нахождение максимума
mov ecx,[A]
mov [min],ecx
cmp ecx,[C]
jl check_B
mov ecx,[C]
mov [min],ecx

check_B:
cmp ecx,[B]
jl fin
mov ecx,[B]
mov [min],ecx

fin:
mov eax, msgf
call sprint
mov eax,[min]
call iprintLF
call quit
