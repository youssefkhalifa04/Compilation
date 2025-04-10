#include <stdio.h>
#include <string.h>
#include <ctype.h>

char keywords[][10] = { "int", "float", "return", "if", "else", "while", "for", "char", "void" };
#define KEYWORDS_COUNT (sizeof(keywords) / sizeof(keywords[0]))

int isKeyword(const char *word) {
    int i ;
    for (i = 0; i < KEYWORDS_COUNT; i++) {
        if (strcmp(word, keywords[i]) == 0) {
            return 1; // It's a keyword
        }
    }
    return 0; // Not a keyword
}

void analyzeLexically(const char *str) {
    char word[50];
    int i = 0, j = 0;

    while (str[i] != '\0') {
        if (isalpha(str[i])) { // Detect keywords and identifiers
            j = 0;
            while (isalnum(str[i])) {
                word[j++] = str[i++];
            }
            word[j] = '\0';

            if (isKeyword(word)) {
                printf("Mot-cle : %s\n", word);
            } else {
                printf("Identificateur : %s\n", word);
            }
        } 
        else if (isdigit(str[i])) { // Detect numbers
            j = 0;
            while (isdigit(str[i]) || str[i] == '.') {
                word[j++] = str[i++];
            }
            word[j] = '\0';
            printf("Nombre : %s\n", word);
        } 
        else if (ispunct(str[i])) { // Detect symbols
            printf("Symbole : %c\n", str[i]);
            i++;
        } 
        else { // Ignore spaces
            i++;
        }
    }
}

int main() {
    char code[] = "int main() { float x = 3.14; return 0; }";
    analyzeLexically(code);
    return 0;
}
