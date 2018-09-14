%{
	#include <stdio.h>
%}

enteros [0-9]
espacio [ \t\n]
esps {espacio}

%%
{enteros}+ {printf("Encontre un numero entero %s \n",yytext); }
. {printf("no es un numero entero: %s \n",yytext); }
%%

int main(){
	yylex();
}
