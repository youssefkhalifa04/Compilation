%{
#include <stdio.h>
%}
%option noyywrap
%%

[a-z]*er {printf("%s : verbe de permier groupe \n",yytext);}
[a-z]*ir {printf("%s : verbe de desieme groupe \n",yytext);}
.|\n    
%%
int main() {
    yylex(); // Exécute l'analyse lexicale
    return 0;
}
