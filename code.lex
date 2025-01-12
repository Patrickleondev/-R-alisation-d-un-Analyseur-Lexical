%{
#include <stdio.h>
%}

%%

[-+*/]                      { printf("Un opérateur !\n"); }
a+                          { printf("Une suite de 'a' !\n"); }
"ab"{3,}           { printf("'ab' qui se répète au moins 3 fois !\n"); }
[a-z][a-z][a-z][a-z][a-z]   { printf("Mot de longueur 5 en minuscules !\n"); }
.                           { printf("Erreur ou chaîne non reconnue : %s\n", yytext); }

[0-9]+                      { printf("ENTIER : %s\n", yytext); }
[A-Z][a-zA-Z0-9]*           { printf("IDENTIFICATEUR : %s\n", yytext); }
[0-9]+\.[0-9]+              { printf("NOMBRE RÉEL : %s\n", yytext); }
.*bb                        { printf("MOT TERMINANT PAR 'bb' : %s\n", yytext); }
%%

int yywrap() {
    return 1;
}

int main() {
    printf("Entrez un mot ou une chaîne :\n");
    yylex();
    return 0;
}
