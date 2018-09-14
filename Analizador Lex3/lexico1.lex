%{
    #include <stdio.h>
%}

diag [//]
gato [#]
id [a-zA-Z]
num [0-9]

%%
({diag}.*)+ {printf("Encontre un comentario de PHP: %s \n", yytext);}
({gato}.*)+ {printf("Encontre un comentario de PHP: %s \n", yytext);}
({id}+{num}*)+ {printf("Encontre un identificador: %s \n", yytext);}
{num}+ {printf("Encontre una constante entera: %s \n", yytext);}


%%

int main(){
    yylex();
}
