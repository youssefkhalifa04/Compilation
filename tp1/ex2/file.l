%{
	#include <stdio.h>
%}
%option noyywrap
%%

[A-Z][a-zA-Z]*   { printf("Mot qui commence par une majuscule: %s\n", yytext); }
[a-zA-Z]*er      { printf("Mot qui termine par 'er': %s\n", yytext); }
j[a-zA-Z]*r      { printf("Mot qui commence par 'j' et termine par 'r': %s\n", yytext); }
.|\n             { /* Ignorer tous les autres caractères */ }

%%

int main() {
    yylex(); // Démarrer l'analyse lexicale
    return 0;
}
