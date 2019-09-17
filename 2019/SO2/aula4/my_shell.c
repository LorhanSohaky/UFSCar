#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/wait.h>

void slice(char *args[], char *string) {
  char *token;
  int i;

  for (token = strtok(string, " "), i = 0; token != NULL;
       token = strtok(NULL, " "), i++) {
    args[i] = token;
  }
  args[i] = NULL;
}

int main() {
  char command[2048];
  pid_t forkStatus;

  char *args[2048];
  int tem_e;

  while (1) {
    tem_e = 0;
    printf("> ");
    scanf(" %[^\n]", command);
    if (strcmp(command, "q") == 0) {
      break;
    } else {
      char *end = strrchr(command, '&');
      if ('&' == command[strlen(command) - 1]) {
        tem_e = 1;
        *end = '\0';
      }
      forkStatus = vfork();
      if (forkStatus == 0) {
        slice(args, command);
        execvp(command, args);
      } else if (forkStatus != -1) {
        if (!tem_e) {
          wait(NULL);
        }
      }
    }
  }
  return 0;
}
