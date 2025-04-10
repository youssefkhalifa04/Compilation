%{
#include <stdio.h>
%}
%option noyywrap
%%

[0-1]*011[0-1]* { printf("Mot qui contient 011: %s\n", yytext); }
[0-1]*00 { printf("Mot qui se termine par 00: %s\n", yytext); }
1[0-1]*10 { printf("Mot qui commence par 1 et termine par 10: %s\n", yytext); }
.|\n[a-z]* {}

%%
int main() {
    yylex(); // Démarrer l'analyse lexicale
    return 0;
}
