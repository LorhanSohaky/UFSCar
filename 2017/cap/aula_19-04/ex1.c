#include <stdio.h>
#include <math.h>

int main(){
	double a,result;
	scanf("%lf",&a);
	if(a<0){
		printf("%lf",a*a);
	}else{
		printf("%f",sqrt(a));
	}
	printf("\n");
	return 0;
}
