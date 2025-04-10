#include <stdio.h>
#include <ctype.h>
#include <string.h>

void analyzeLexically(const char *str) {
    int i = 0;
    while (str[i] != '\0') {
        if (isdigit(str[i])) { // Détection d'un nombre
            printf("Nombre : ");
            while (isdigit(str[i])) {
                putchar(str[i]);
                i++;
            }
            printf("\n");
            
        } else if (isalpha(str[i]) || str[i] == '_') { // Détection d'un identificateur
            printf("Identificateur : ");
            while (isalnum(str[i]) || str[i] == '_') {
                putchar(str[i]);
                i++;
            }
            printf("\n");
        } else if (ispunct(str[i])) { // Détection d'un symbole
            printf("Symbole : %c\n", str[i]);
            i++;
        } else { // Ignorer les espaces
            i++;
        }
    }
}

int main() {
    char code[] = "int x = 42; float y = 3.14;";
    analyzeLexically(code);
    return 0;
}
