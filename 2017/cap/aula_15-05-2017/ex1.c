#include <stdio.h>
#include <ctype.h>
#include <locale.h>

int main(){
	setlocale(LC_ALL,"Portuguese");
	int crianca_pizza=0, adulto_dengue=0, homem_18a25_desempregado=0,feminino_mais28=0;
	int idade,horario;
	char gosta_pizza;
	char dengue;
	char desempregado;
	char sexo;
	
	while(1){
		printf("Horas:");
		scanf("%d",&horario);
		
		if(horario<8 || horario>18){
			break;
		}
		
		printf("Idade:");
		scanf("%d",&idade);
		
		if(idade<=0){
			break;
		}
		
		printf("Sexo:");
		scanf(" %c",&sexo);
		
		printf("Dengue? ");
		scanf(" %c",&dengue);
		
		printf("Desempregado? ");
		scanf(" %c",&desempregado);
		
		printf("Gosta de pizza?");
		scanf(" %c",&gosta_pizza);
		
		if(toupper(sexo)=='F' && idade>28){
			feminino_mais28++;
		}
		if(idade>0 && idade<=12 && toupper(gosta_pizza)=='S'){
			crianca_pizza++;
		}
		if(idade>=18 && toupper(dengue)=='S'){
			adulto_dengue++;
		}
		if(toupper(sexo)=='M' && idade>=18 && idade<=25 && toupper(desempregado)=='S'){
			homem_18a25_desempregado++;
		}
	}
	
	printf("Sexo feminino maiores de 28 anos:%d\n",feminino_mais28);
	printf("Crianças que gostam de pizza:%d\n",crianca_pizza);
	printf("Adulto com dengue:%d\n",adulto_dengue);
	printf("Homem entre 18 e 25 anos desempregado:%d\n",homem_18a25_desempregado);
	
	return 0;
}
