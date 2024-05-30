section .data
    val1 db 0x3C     ; Primer valor (60 en decimal)
    val2 db 0x0F     ; Segundo valor (15 en decimal)
    result db 0      ; Resultado de la operación AND

section .text
global _start

_start:
    ; Cargar val1 y val2 en registros
    mov al, [val1]
    mov bl, [val2]

    ; Realizar la operación AND
    and al, bl

    ; Almacenar el resultado
    mov [result], al

    ; Salir del programa
    mov eax, 1      ; syscall: exit
    int 0x80

section .data
    val1 db 0x3C     ; Primer valor (60 en decimal)
    val2 db 0x0F     ; Segundo valor (15 en decimal)
    result db 0      ; Resultado de la operación OR

section .text
global _start

_start:
    ; Cargar val1 y val2 en registros
    mov al, [val1]
    mov bl, [val2]

    ; Realizar la operación OR
    or al, bl

    ; Almacenar el resultado
    mov [result], al

    ; Salir del programa
    mov eax, 1      ; syscall: exit
    int 0x80

section .data
    val1 db 0x3C     ; Primer valor (60 en decimal)
    val2 db 0x0F     ; Segundo valor (15 en decimal)
    result db 0      ; Resultado de la operación XOR

section .text
global _start

_start:
    ; Cargar val1 y val2 en registros
    mov al, [val1]
    mov bl, [val2]

    ; Realizar la operación XOR
    xor al, bl

    ; Almacenar el resultado
    mov [result], al

    ; Salir del programa
    mov eax, 1      ; syscall: exit
    int 0x80
