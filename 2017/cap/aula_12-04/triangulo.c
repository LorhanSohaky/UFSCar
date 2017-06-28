#include<stdio.h>
#include<math.h>

int main(){
    float lado,altura;

    printf("Digite o lado do triangulo:");
    scanf("%f",&lado);

    altura=lado*sqrt(3)/2.0;
    printf("A altura é %f\n",altura);
}
