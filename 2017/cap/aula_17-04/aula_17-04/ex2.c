#include<stdio.h>

//Qual o maior de 3 valores

int main(){
	int a,b,c;
	int maior,menor;
	
	printf("Digite os valores:");
	scanf("%d%d%d",&a,&b,&c);

	if(a<=b && b<=c){
		maior=c;
		menor=a;
	}else if(c<=b && b<=a){
		maior=a;
		menor=c;
	}else if(b<=a && a<=c){
		maior=c;
		menor=b;
	}else if(c<=a && a<=b){
		maior=b;
		menor=c;
	}else if(a<=c && c<=b){
		maior=b;
		menor=a;
	}else if(b<=c && c<=a){
		maior=a;
		menor=b;
	}
	
	printf("Maior:%d menor:%d\n",maior,menor);
	return 0;
}
