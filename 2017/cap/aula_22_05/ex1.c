#include <stdio.h>

double soma(double v1,double v2);
double subtracao(double v1,double v2);
double multiplicacao(double v1,double v2);
double divisao(double v1,double v2);

int main(){
	double a,b,r;
	char operacao;
	
	scanf("%lf %c %lf",&a,&operacao,&b);
	
	switch(operacao){
		case '+':
			r=soma(a,b);
			break;
			
		case '-':
			r=subtracao(a,b);
			break;
		
		case '*':
			r=multiplicacao(a,b);
			break;
		
		case '/':
			r=divisao(a,b);
			break;
	}
	
	printf("%g %c %g = %g\n",a,operacao,b,r);
	
	return 0;
}

double soma(double v1,double v2){
	return v1+v2;
}

double subtracao(double v1,double v2){
	return v1-v2;
}

double multiplicacao(double v1,double v2){
	return v1*v2;
}

double divisao(double v1,double v2){
	return v1/v2;
}

