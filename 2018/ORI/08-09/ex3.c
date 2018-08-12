#include <stdio.h>

int count( char *string ){
	int length = 0;

	while( string[length] != '\0' ){
		length++;
	}

	return length;
}

int main(){
	printf("%d\n", count("Lorhan"));
	printf("%d\n", count("Kondo"));
	printf("%d\n", count("123"));

	return 0;
}
