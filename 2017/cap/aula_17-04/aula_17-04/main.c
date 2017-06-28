#include <stdio.h>
#include <stdlib.h>

//Algoritmo para determinar se é um triangulo com base na medida dos lados

int main()
{
    float a,b,c;

    printf("Digite o valor do lado A do triângulo:");
    scanf("%f",&a);

    printf("Digite o valor do lado B do triângulo:");
    scanf("%f",&b);

    printf("Digite o valor do lado C do triângulo:");
    scanf("%f",&c);

    if((abs(a-b)<c && c<a+b) || (abs(a-c)<b && b<a+c) || (abs(c-b)<a && a<c+b)){
        printf("É um triângulo!");
    }else{
        printf("Não é um triângulo!");
    }
    return 0;
}
