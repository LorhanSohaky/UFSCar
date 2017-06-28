#include <stdio.h>

int main(){
	int i,j;
	
	for(i=0;i<=10;i++){
		for(j=1;j<=9;j++){
			printf("%2d X %2d = %3d\t",j,i,i*j);
		}
		printf("\n");
	}
	
	return 0;
}
