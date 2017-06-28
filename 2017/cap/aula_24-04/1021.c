#include <stdio.h>

int main(){
	int i, quantidade;
	int val;
	double valor;
	int cedula[6]={100,50,20,10,5,2};
	int moeda[6]={100,50,25,10,5,1};
	scanf("%lf",&valor);

	printf("NOTAS:\n");
	for(i=0;i<6;i++){
		quantidade=(int)(valor/cedula[i]);
		valor-=quantidade*cedula[i];
		
		printf("%d nota(s) de R$ %.2f\n",quantidade,(float)cedula[i]);
	}
	printf("MOEDAS:\n");
	val=valor*100;
	for(i=0;i<6;i++){
		quantidade=val/moeda[i];
		val-=quantidade*moeda[i];
		
		printf("%d moeda(s) de R$ %.2lf\n",quantidade,moeda[i]/100.0);
		
	}
	
	return 0;
}
