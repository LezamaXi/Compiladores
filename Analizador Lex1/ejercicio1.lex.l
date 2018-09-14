%option noyywrap
%{
	#include <stdio.h>
%}

u 0|1
n 1100
o 1
d 01|10|00
s 11

%%
{u}*{n}{o}* {printf ("encontre una cadena que cumple con la expresion regular (0 | 1)* 1100 1*: %s \n", yytext);}
{d}*{s} {printf ("encontre una cadena que cumple con la expresion regular (01|10|00)*11: %s \n", yytext);}

%%

int main(){
	yylex();
}
