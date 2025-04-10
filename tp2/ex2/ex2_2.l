%{
#include <stdio.h>
%}
%option noyywrap
%%

[a-z]*er  ECHO ;printf(" : verbe de permier groupe \n",yytext);
[a-z]*ir  ECHO ;printf(" : verbe de desieme groupe \n",yytext);
.|\n    
%%
int main() {
    yylex(); // Exécute l'analyse lexicale
    return 0;
}
