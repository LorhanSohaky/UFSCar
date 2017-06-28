#include <stdio.h>

int main(){
	int i,n,menor=-1,maior=1,k;
	
	scanf("%d",&n);
	
	for(i=0;i<n;i++){
		k=maior+menor;
		printf(" %d,",k);
		menor=maior;
		maior=k;
		
	}
	
	printf("\b");
	printf(" \n");
	
	return 0;
}
