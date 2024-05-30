```asm
_sum: ; Función suma
push ebp
mov ebp, esp
mov eax, [ebp+8] ; Primer parámetro
add eax, [ebp+12] ; Segundo parámetro

pop ebp
ret
```

2. stdcall
- Descripción: Los parámetros se pasan en la pila. La función llamada limpia la pila.
- Ejemplo:

```asm
_sum@8: ; Nombre decorado con @8
push ebp
mov ebp, esp
mov eax, [ebp+8] ; Primer parámetro
add eax, [ebp+12] ; Segundo parámetro
pop ebp
ret 8 ; Limpiar la pila
```

3. fastcall
- Descripción: Los dos primeros parámetros se pasan en los registros ECX y EDX. Los restantes
en la pila.
- Ejemplo:

```asm
_sum:
add ecx, edx ; Sumar los dos primeros parámetros
mov eax, ecx ; Mover el resultado a EAX
ret
```

4. thiscall

- Descripción: Usada para métodos de clase en C++. El `this` pointer se pasa en ECX.
- Ejemplo:

```asm
_method:
mov eax, [ecx] ; Cargar valor de la clase apuntada por ECX
; Realizar operación
ret
```

5. vectorcall
- Descripción: Similar a fastcall pero optimizado para el uso de registros vectoriales.
- Ejemplo (pseudo-código):

```asm
_vector_func:
; Asumir que los primeros parámetros vectoriales están en registros SIMD
; Operaciones con registros SIMD
ret
```