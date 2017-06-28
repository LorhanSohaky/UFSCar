#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
	char cpf[10];
	int i,dig1=0,dig2=0;
	
	printf("Digite o CPF(sem pontos ou espaços):");
	scanf("%s",cpf);
	for(i=1;i<=9;i++){
		dig2+=(cpf[i-1]-'0')*(10-i);
		dig1+=(cpf[i-1]-'0')*i;
		
	}
	
	dig1%=11;
	dig2%=11;
	
	printf("CPF + código verificador:");
	
	for(i=0;i<strlen(cpf);i++){
		if(i%3==0 && i!=0){
			printf(".");
		}
		printf("%c",cpf[i]);
	}
	
	printf("-");
	
	dig2==10? printf("X"):printf("%d",dig1);
	dig1==10? printf("X"):printf("%d",dig2);
	
	printf("\n");
	
	return 0;
}
