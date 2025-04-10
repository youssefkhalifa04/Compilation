%{
#include <stdio.h>
int line_count = 0, word_count = 0, char_count = 0;
int in_word = 0;
%}
%option noyywrap
%%
\n      { line_count++; char_count++; in_word = 0; }
[ \t]+  { char_count += yyleng; in_word = 0; }
[^ \t\n]+ { char_count += yyleng; word_count++; in_word = 1; }
%%

int main() {
yylex();
printf("Lignes : %d\nMots : %d\nCaractères : %d\n", line_count, word_count, char_count);
return 0;
}

