#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int aleatorio();
int jogar( int ev1,int ev2,int at,int d);

int main(){
	int ev1,ev2,at,d,dado,menor;
	
	do{
		scanf("%d%d%d%d",&ev1,&ev2,&at,&d);
		if(ev1+ev2+at+d==0){
			break;
		}else{
			printf("Ganhador: Vampiro %d\n",jogar(ev1,ev2,at,d));
		}
	}while(1);
	return 0;
}

int jogar( int ev1,int ev2,int at,int d){
	int dado,ganhador;
	
	while(ev1>0 && ev2>0){
		dado=aleatorio();
		if(dado<=at){
			ev1+=d;
			ev2-=d;
		}else{
			ev1-=d;
			ev2+=d;
		}
		printf("Dado %d EV1 %d EV2 %d\n",dado,ev1,ev2);
	}
	
	if(ev1<=0){
		ganhador=2;
	}else{
		ganhador=1;
	}
	
	return ganhador;
}


int aleatorio(){
	srand(time(NULL));
	return rand()%6+1;
}
