%{
    #include <stdio.h>
    #include "lexer.h"  // Déclaration des fonctions pour interagir avec le programme C
%}

%%

[0-9]+      { yylval = atoi(yytext); return NOMBRE; }
[+\-*/]     { return OP; }
[()]        { return PAR; }
[a-zA-Z_][a-zA-Z0-9_]* { return ID; }
[ \t\n]     
.           { return UNKNOWN; }

%%

int yywrap() {
    return 1;
}
