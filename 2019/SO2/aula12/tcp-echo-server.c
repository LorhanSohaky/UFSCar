#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <pthread.h>

#define BUFFER_SIZE 1024
#define CLIENTS_SIZE 1024
#define on_error(...) { fprintf(stderr, __VA_ARGS__); fflush(stderr); exit(1); }

void slice(char *args[], char *string) {
  char *token;
  int i;

  for (token = strtok(string, " "), i = 0; token != NULL;
       token = strtok(NULL, " "), i++) {
    args[i] = token;
  }
  args[i] = NULL;
}


void *new_client(void *ptr){
  char buf[BUFFER_SIZE];
  int err;
  int *data = (int* ) ptr;
  int client_fd = *data;

  pid_t forkStatus;

  char *args[2048];
  char out[10048];
  int out_pipe[2];
  int saved_stdout;
  int tem_e;

  while (1) {
    tem_e = 0;
    err = send(client_fd,"> ",2,0);
    if (err < 0) on_error("Client write failed\n");

    int readed = recv(client_fd, buf, BUFFER_SIZE, 0);
    printf("BUff %s\n",buf);
    if (!readed) break; // done reading
    if (readed < 0) on_error("Client read failed\n");

    if (strcmp(buf, "q") == 0) {
      break;
    } else {
      char *end = strrchr(buf, '&');
      if ('&' == buf[strlen(buf) - 1]) {
        tem_e = 1;
        *end = '\0';
      }
      forkStatus = vfork();
      if (forkStatus == 0) {
        slice(args, buf);
        saved_stdout = dup(STDOUT_FILENO);
        if( pipe(out_pipe) != 0 ) {
          exit(1);
        }
        dup2(out_pipe[1], STDOUT_FILENO);
        close(out_pipe[1]);
        read(out_pipe[0], out, 10048);
        err = send(client_fd,out,strlen(out),0);
      } else if (forkStatus != -1) {
        if (!tem_e) {
          wait(NULL);
        }
      }
    }
  }
}

int main (int argc, char *argv[]) {
  int counter = 0;
  if (argc < 2) on_error("Usage: %s [port]\n", argv[0]);

  int port = atoi(argv[1]);

  int server_fd, client_fd[CLIENTS_SIZE], err;
  struct sockaddr_in server, client[CLIENTS_SIZE];
  pthread_t thread_id[CLIENTS_SIZE];


  server_fd = socket(AF_INET, SOCK_STREAM, 0);
  if (server_fd < 0) on_error("Could not create socket\n");

  server.sin_family = AF_INET;
  server.sin_port = htons(port);
  server.sin_addr.s_addr = htonl(INADDR_ANY);

  int opt_val = 1;
  setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, &opt_val, sizeof opt_val);

  err = bind(server_fd, (struct sockaddr *) &server, sizeof(server));
  if (err < 0) on_error("Could not bind socket\n");

  err = listen(server_fd, 128);
  if (err < 0) on_error("Could not listen on socket\n");

  printf("Server is listening on %d\n", port);

  socklen_t client_len = sizeof(struct sockaddr_in);

  while (1) {
    if(counter < 4){
      int client_fd = accept(server_fd, (struct sockaddr *) &client[counter], &client_len);
      if (client_fd < 0) on_error("Could not establish new connection\n");
      pthread_create(&thread_id[counter], NULL, new_client, &client_fd);
      counter++;
    }else{
      fprintf(stderr, "Max clients connected\n");
      fflush(stderr);

    }
  }

  return 0;
}
