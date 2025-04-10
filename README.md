Parfait ! Voici une version d’un **`README.md`** adaptée à GitHub, qui explique la **technique de compilation**, **l’analyse lexicale manuelle**, **Lex/Flex**, et **Bison**, de façon claire et concise 👇

---

# 🧠 Compilation et Analyse Lexicale

Ce dépôt contient une introduction aux **techniques de compilation**, ainsi qu’une présentation pratique de **l’analyse lexicale manuelle**, **Lex/Flex**, et **Bison**.

---

## 🧩 Technique de Compilation

La compilation d’un programme passe par plusieurs étapes :

1. **Analyse lexicale** : Découper le code source en *tokens* (mots-clés, identifiants…)
2. **Analyse syntaxique** : Vérifier que le code suit les règles grammaticales du langage
3. **Analyse sémantique** : Vérifier le sens du code (types, portée…)
4. **Optimisation**
5. **Génération de code** (intermédiaire ou machine)

---

## 🔍 Analyse Lexicale Manuelle

C’est le processus de création d’un analyseur lexical **sans générateur**. On code soi-même :

- La lecture du code source caractère par caractère
- La détection des *tokens* (mots, chiffres, symboles…)
- Le traitement des erreurs lexicales

👨‍💻 Exemple :
```c
if (isalpha(c)) {
  // identifier un mot-clé ou un identifiant
}
```

---

## ⚙️ Lex / Flex

### 🔹 Lex
- Générateur d’analyseurs lexicaux (ancien, en C)

### 🔹 Flex (Fast Lex)
- Version moderne et rapide de Lex
- Utilise des **expressions régulières** pour reconnaître les tokens

🧪 Exemple Flex :
```lex
%%
[0-9]+    { printf("Nombre : %s\n", yytext); }
[a-zA-Z]+ { printf("Mot : %s\n", yytext); }
%%
```

🛠️ Compilation :
```bash
flex code.l
gcc lex.yy.c -lfl -o lexer
./lexer < input.txt
```

---

## 📐 Bison (Analyseur Syntaxique)

- Générateur d’analyseurs syntaxiques (comme Yacc)
- Fonctionne avec une grammaire définie
- Analyse la **structure** du programme (ex : expressions arithmétiques)

🧪 Exemple Bison :
```yacc
%token NUMBER
%%
expr: expr '+' term | term ;
term: NUMBER ;
%%
```

🛠️ Compilation :
```bash
bison -d code.y
flex code.l
gcc code.tab.c lex.yy.c -lfl -o parser
./parser < input.txt
```

---

## 📦 Prérequis

- [Flex](https://github.com/westes/flex)
- [Bison](https://www.gnu.org/software/bison/)
- GCC (compilateur C)

---

## ✍️ Auteur

- **Youssef Khalifa**
- GitHub: [@youssefkhalifa04](https://github.com/youssefkhalifa04)

---
