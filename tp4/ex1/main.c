#include <stdio.h>
#include <stdlib.h>  
#include "lex.yy.c"  

extern char *yytext; 
extern int yylex();  
int main() {
    int token;

    printf("Entrez une expression : ");

    while ((token = yylex())) {
        switch (token) {
            case 1:
                printf("[NOMBRE] %s\n", yytext);
                break;
            case 2:
                printf("[OP] %s\n", yytext);
                break;
            case 3:
                printf("[PAR] %s\n", yytext);
                break;
            case 4:
                printf("[ID] %s\n", yytext);
                break;
            default:
                printf("[UNKNOWN] %s\n", yytext);
                break;
        }
    }

    return 0;
}

