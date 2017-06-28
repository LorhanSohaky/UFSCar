#include <stdio.h>

int main(){
	int x1,x2,soma=0;
	
	scanf("%d%d",&x1,&x2);
	
	while(x1<=x2){
		soma+=x1;
		printf("%d+",x1);
		x1+=2;
	}
	
	printf("\b=%d\n",soma);
	
	return 0;
}
