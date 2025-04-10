%{
#include<stdlib.h>
int count =0, sum =0;
%}
%option noyywrap
%%
[0-9]+ {count++;sum+=atoi(yytext);fprintf(yyout,"nombre trouve : %s\n",yytext);}
.|\n ;
%%
int main(){
char file_in[256], file_out[256];
printf("fichier source :");
gets(file_in);
printf("fichier resultat :");
gets(file_out);
yyin=fopen(file_in,"r");
yyout=fopen(file_out,"w");
yylex();
fprintf(yyout,"le nombre totale est : %d\n",count);
fprintf(yyout,"somme :%d",sum);
fclose(yyin);
fclose(yyout);
return 0;
}
