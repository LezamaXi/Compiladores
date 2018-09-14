%option noyywrap
%{
	#include <stdio.h>
%}

letras [a-zA-Z]
numeros [0-9]
espacio [ \t\n]
esps {espacio}

%%
({letras}+{numeros}*)+ {printf("Encontre un id %s \n",yytext); }
%%

int main(){
	yylex();
}
