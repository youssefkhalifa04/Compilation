#ifndef LEXER_H
#define LEXER_H

#define NOMBRE 1
#define OP 2
#define PAR 3
#define ID 4
#define UNKNOWN 5

extern int yylval;
int yylex();

#endif
