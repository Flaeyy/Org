assembly
section .data
msg db &quot;Hello, World!&quot;, 0

section .text
global _start

_start:
; Write &quot;Hello, World!&quot; to stdout
mov eax, 4 ; syscall number for sys_write
mov ebx, 1 ; file descriptor 1 is stdout
mov ecx, msg ; pointer to the message to write
mov edx, 13 ; number of bytes to write
int 0x80 ; call kernel

; Exit the program
mov eax, 1 ; syscall number for sys_exit
xor ebx, ebx ; exit code 0
int 0x80 ; call kernel
