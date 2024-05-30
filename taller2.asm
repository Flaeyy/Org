assembly
section .data
numero1 dd 5 ; Variable &#39;numero1&#39; con valor 5
numero2 dd 7 ; Variable &#39;numero2&#39; con valor 7
resultado dd 0 ; Variable &#39;resultado&#39; inicializada en 0

section .text

global _start

_start:
; Registro
mov eax, [numero1] ; Se carga el valor de &#39;numero1&#39; en eax
add eax, [numero2] ; Se suma el valor de &#39;numero2&#39; a eax

; Inmediato
mov ebx, 10 ; Se carga el valor inmediato 10 en ebx

; Registro indirecto
mov eax, [numero1] ; Se carga el valor de &#39;numero1&#39; en eax
mov ebx, eax ; Se carga el valor de eax (registro
indirecto) en ebx

; Explicación del modo de direccionamiento:
; - Registro: Se carga directamente el valor de la variable en
el registro.
; - Inmediato: Se carga un valor inmediato directamente en el
registro.
; - Registro indirecto: Se carga el valor de la variable en un
registro y luego se transfiere a otro registro.

; Finalización del programa
mov eax, 1 ; syscall para salir del programa
xor ebx, ebx ; limpia ebx (sin código de error)
int 0x80 ; realiza la llamada al sistema
```