assembly
section .data
mensaje db &#39;Hola Mundo, este es un mensaje mas largo.&#39;, 0

section .text
global _start

_start:

; Modificamos los registros para imprimir la cadena completa
mov eax, 4
mov ebx, 1
mov ecx, mensaje
mov edx, 38 ; Longitud de la nueva cadena (incluyendo el carácter nulo)
int 0x80

; Salimos del programa
mov eax, 1
xor ebx, ebx
int 0x80
