%{
int nbVoyelles, nbConsonnes, nbPonct;
%}
%option noyywrap

consonne [b-df-hj-np-tv-xz]
ponctuation [,:;?!]

%%

[aeiouy] { nbVoyelles++; }
{consonne} { nbConsonnes++; }
{ponctuation} { nbPonct++; }
.|\n { /* Ne rien faire */ }

%%

int main() {
    nbVoyelles = nbConsonnes = nbPonct = 0;
    yylex();
    printf("Il y a %d voyelles, %d consonnes, %d signes de ponctuation.\n",
           nbVoyelles, nbConsonnes, nbPonct);
    return 0;
}
