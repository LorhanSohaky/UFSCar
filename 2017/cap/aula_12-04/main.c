#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a,b;
    float media;

    //entrada dos dados

    printf("Informe o valor A:");
    scanf("%d",&a);

    printf("Informe o valor B:");
    scanf("%d",&b);

    //calculo da media
    media=(a+b)/2.0;

    printf("A media = %f\n",media);

    return 0;
}
