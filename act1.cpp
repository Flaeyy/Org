#include <stdio.h>

// Función para sumar dos números binarios
int sumaBinaria(int num1, int num2) {
    return num1 + num2;
}

// Función para restar dos números binarios
int restaBinaria(int num1, int num2) {
    return num1 - num2;
}

// Función para multiplicar dos números binarios
int multiplicacionBinaria(int num1, int num2) {
    return num1 * num2;
}

// Función para dividir dos números binarios
int divisionBinaria(int num1, int num2) {
    if (num2 != 0) {
        return num1 / num2;
    } else {
        printf("Error: No se puede dividir por cero.\n");
        return 0;
    }
}

int main() {
    int num1, num2;

    // Solicitar dos números binarios al usuario
    printf("Introduce el primer número binario: ");
    scanf("%d", &num1);
    printf("Introduce el segundo número binario: ");
    scanf("%d", &num2);

    // Mostrar los resultados de las operaciones
    printf("Suma: %d\n", sumaBinaria(num1, num2));
    printf("Resta: %d\n", restaBinaria(num1, num2));
    printf("Multiplicación: %d\n", multiplicacionBinaria(num1, num2));
    printf("División: %d\n", divisionBinaria(num1, num2));

    return 0;
}
