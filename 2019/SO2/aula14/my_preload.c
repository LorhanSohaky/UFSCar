#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>

#include <dlfcn.h>

typedef void *(*orig_open_f_type)(size_t size);


void* malloc (size_t size) {
	write(2,"Warning: you using malloc!\n",28);

	orig_open_f_type orig_open;
	orig_open = (orig_open_f_type)dlsym(RTLD_NEXT,"malloc");
	return orig_open(size);
}

