#include <stdio.h>

// Estructura para representar números binarios con punto flotante
typedef struct {
    int parte_entera;
    float parte_fraccionaria;
} BinarioFlotante;

// Función para sumar dos números binarios con punto flotante
BinarioFlotante sumaBinariaFlotante(BinarioFlotante num1, BinarioFlotante num2) {
    BinarioFlotante resultado;
    resultado.parte_entera = num1.parte_entera + num2.parte_entera;
    resultado.parte_fraccionaria = num1.parte_fraccionaria + num2.parte_fraccionaria;
    return resultado;
}

// Función para restar dos números binarios con punto flotante
BinarioFlotante restaBinariaFlotante(BinarioFlotante num1, BinarioFlotante num2) {
    BinarioFlotante resultado;
    resultado.parte_entera = num1.parte_entera - num2.parte_entera;
    resultado.parte_fraccionaria = num1.parte_fraccionaria - num2.parte_fraccionaria;
    return resultado;
}

int main() {
    BinarioFlotante num1, num2, resultado;

    // Solicitar dos números binarios con punto flotante al usuario
    printf("Introduce la parte entera del primer número binario: ");
    scanf("%d", &num1.parte_entera);
    printf("Introduce la parte fraccionaria del primer número binario: ");
    scanf("%f", &num1.parte_fraccionaria);
    printf("Introduce la parte entera del segundo número binario: ");
    scanf("%d", &num2.parte_entera);
    printf("Introduce la parte fraccionaria del segundo número binario: ");
    scanf("%f", &num2.parte_fraccionaria);

    // Realizar la suma y mostrar el resultado
    resultado = sumaBinariaFlotante(num1, num2);
    printf("Suma: %d.%f\n", resultado.parte_entera, resultado.parte_fraccionaria);

    // Realizar la resta y mostrar el resultado
    resultado = restaBinariaFlotante(num1, num2);
    printf("Resta: %d.%f\n", resultado.parte_entera, resultado.parte_fraccionaria);

    return 0;
}
