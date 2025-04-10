%{
#include <stdio.h>
#include <string.h> // Nécessaire pour strlen()
int s=0;
int a=0;
%}
%option noyywrap

%%

[+\-/*]  { ECHO; printf(" : ceci est un operateur \n", yytext); s++; }
F[F]*    { ECHO; printf(" : suite des F  \n", yytext); }
abab[ab]* { ECHO; printf(" : deux ab ou plus \n", yytext); }
[a-z]{3} { ECHO; printf(" : chaine de longueur 3  \n", yytext); }
-[0-9]*.[0-9]* { ECHO; printf(" : ceci est un reel\n", yytext); s++; }
[0-9]*.[0-9]* { ECHO; printf(" : ceci est un reel\n", yytext); s++; }
[ \t\n]+ {}
.|\n { ECHO; printf(" erreur : \n", yytext); a++; }
%%

int main() {
    yylex(); // Exécute l'analyse lexicale
    printf("Nombre des opérateurs : %d\n", s);
    printf("Nombre des erreurs : %d\n", a);
    return 0;
}
