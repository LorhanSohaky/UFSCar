#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/wait.h>


int main(){
	char command[2048];
	pid_t forkStatus;

        
	while(1){
		printf("> ");
		scanf(" %[^\n]",command);
		if(strcmp(command,"q")==0){
			break;
		}else{
			forkStatus = vfork();
			if(forkStatus ==0){
				char *end = strpbrk(command,"&");
				if (end){
					*end = '\0';
				}
				execlp(command,command, NULL);
			}else if(forkStatus!=-1){
				if(!strpbrk(command,"&")){
					wait(NULL);
				}
			}
		}

	}
	return 0;
}
