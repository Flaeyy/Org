#include <stdio.h>

// Función para calcular el complemento a dos de un número binario
int complementoDos(int num) {
    return ~num + 1;
}

int main() {
    int num;

    // Solicitar un número binario al usuario
    printf("Introduce un número binario: ");
    scanf("%d", &num);

    // Mostrar el complemento a dos del número binario
    printf("Complemento a dos: %d\n", complementoDos(num));

    return 0;
}
