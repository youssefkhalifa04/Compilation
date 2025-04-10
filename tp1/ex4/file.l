%{
#include <stdio.h>
%}
%option noyywrap
%%

"float"      { printf("double"); }  // Remplace "float" par "double"
.|\n         { printf("%s", yytext); } // Copie tout le reste inchangé

%%
int main() {
    yylex(); // Exécute l'analyse lexicale
    return 0;
}
