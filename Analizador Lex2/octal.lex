%{
	#include <stdio.h>
%}

octales [0-7]
espacio [ \t\n]
esps {espacio}

%%
{octales}+ {printf("Encontre un numero octal %s \n",yytext); }
. {printf("no es un octal %s \n",yytext); }
%%

int main(){
	yylex();
}
