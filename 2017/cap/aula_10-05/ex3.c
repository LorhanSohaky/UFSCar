#include <stdio.h>

int main(){
	int i, count=0,n;
	
	scanf("%d",&n);
	
	for(i=1;i<=n;i++){
		if(n%i==0){
			count++;
		}
	}
	
	if(count==2){
		printf("O número é primo\n");
	}else{
		printf("O número não é primo\n");
	}
	return 0;
}
