%{
	#include <stdio.h>
%}

hexa [0-9A-Fa-f]
espacio [ \t\n]
esps {espacio}

%%
{hexa}+ {printf("Encontre un numero hexadecimal %s \n",yytext); }
%%

int main(){
	yylex();
}
