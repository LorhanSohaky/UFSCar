#include <stdio.h>

int main(){
	double x1,x2,soma=0;
	
	scanf("%lf%lf",&x1,&x2);
	
	while(x1<=x2){
		soma+=x1;
		printf("%.1lf+",x1);
		x1+=0.2;
		
	}
	printf("\b=%.1lf\n",soma);
	
	return 0;
}
