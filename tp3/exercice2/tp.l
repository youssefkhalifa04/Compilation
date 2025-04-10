%{
#include <stdio.h>
%}

%option noyywrap

%%

[0-9]+             { printf("entier: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]* {
                      if(strcmp(yytext, "program") == 0 ||
                         strcmp(yytext, "var") == 0 ||
                         strcmp(yytext, "begin") == 0 ||
                         strcmp(yytext, "end") == 0)
                          printf("mot-cle: %s\n", yytext);
                      else
                          printf("identificateur: %s\n", yytext);
                   }
[+\*]              { printf("operateur: %s\n", yytext); }
":="               { printf("operateur: %s\n", yytext); }
[,.;]              { printf("separateur: %s\n", yytext); }
[ \t\n]            { }
.                  { printf("Caractère inconnu: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
