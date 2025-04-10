#include <stdio.h>
#include <ctype.h>

int countWords( char *str) {
    int count = 0;
    int inWord = 0;

    while (*str) {
        if (isspace(*str)) {
            inWord = 0;  
        } else if (!inWord) {
            inWord = 1;
            count++;  
        }
        str++;
    }
    return count;
}

int main() {
    char text[] = "Bonjour, ceci est un exemple d'analyse lexicale.";
    printf("Nombre de mots : %d\n", countWords(text));
    return 0;
}
