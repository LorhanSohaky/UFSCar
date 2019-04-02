/*
    Ideia: analisar o que ocorre se um processo pai finalizar antes de seu
   processo filho.
*/

#include <limits.h>
#include <stdio.h>
#include <unistd.h>

int main(int argc, char const *argv[]) {
  char name[120];

  pid_t pid_perdido = fork();

  if (pid_perdido == 0) {
    getchar();
    printf("filhoPerdido %d %d\n", getpid(), getppid());
    sprintf(name, "filhoPerdidoFim");
  } else if (pid_perdido > 0) {
    pid_t pid_nao_perdido = fork();

    if (pid_nao_perdido == 0) {
      printf("filhoNaoPerdido %d %d\n", getpid(), getppid());
      sprintf(name, "filhoNaoPerdidoFim");
    } else if (pid_nao_perdido > 0) {
      printf("paiInicio %d %d\n", getpid(), getppid());
      sprintf(name, "paiFim");
    }
  }

  printf("%s\n", name);
  return 0;
}

/*
    Conclusão:  Quando o proceso filho termina antes de seu pai, ele recebe o
   PPID do systemd. Quando o proceso filho termina depois de seu pai, o PPID
   mantém o do processo pai.
*/
