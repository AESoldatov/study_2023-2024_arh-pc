%include 'in_out.asm'
SECTION .data
msgf db "Функция: f(x)=5*(2+x)",0
msgr db "Результат: ",0
rez dd 0d
SECTION .bss
rezx resb 80
SECTION .text
global _start
_start:
mov eax,msgf
call sprintLF
pop ecx
pop edx
sub ecx,1
next:
cmp ecx,0
je _end
pop eax
call atoi
call _calculation
loop next
_end:
mov eax,msgr
call sprint
mov eax,[rez]
call iprintLF
call quit
_calculation:
add eax,2
mov ebx,5
mul ebx
add eax,[rez]
mov [rez],eax
ret
