#include <stdio.h>
#include <math.h>


int main(){
	int i;

	for(i=1000;i<=9999;i++){
		if(sqrt(i)==(int)sqrt(i) && i/100+i%100==sqrt(i)){
			printf("%d+%02d=(%.0lf)^2=%d\n",i/100,i%100,sqrt(i),i);
		}
	}

	return 0;
}
