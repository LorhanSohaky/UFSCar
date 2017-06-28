#include <stdio.h>
#include <stdlib.h>

int main(){
	char *data;
	float temperatura;
	printf("%s%c%c\n","Content-Type:text/html;charset=utf-8",13,10);
	printf("<TITLE>Celsius para Fahrenheit</TITLE>\n");
	printf("<H3>Celsius para Fahrenheit</H3>\n");
	
	data = getenv("QUERY_STRING");
	
	if(data == NULL){
		printf("<P>Error! Error in passing data from form to script.");
	}else if(sscanf(data,"temperatura=%f",&temperatura)!=1){
		printf("<P>Error! Invalid data. Data must be numeric.");
	}else{
		printf("<P>Temperatura em Celsius %f para Fahrenheit %f</P>",temperatura,temperatura*18000+32.00);
	}
  
	return 0;
}
