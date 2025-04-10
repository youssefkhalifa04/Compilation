%{
#include <stdio.h>
%}
%option noyywrap
%%

[a-zA-Z][a-zA-Z0-9]* { printf("[%s]",yytext);}
.|\n    
%%
int main() {
    yylex(); // Exécute l'analyse lexicale
    return 0;
}
