%{
#include <stdio.h>
%}

%option noyywrap

/* Expresión regular para palabras en {a,b} con número par de "a".
   Equivalente: b*(ab* ab*)*  */

A a
B b
PAR_A {B}*({A}{B}*{A}{B}*)*
IMPAR_A  {B}*({A}{B}*{A}{B}*)*{A}{B}*

%%

{PAR_A}      { printf("Aceptado: %s\n", yytext); }
{IMPAR_A}       { printf("Rechazado: %s\n", yytext); }

[ \t]+            ;
\n                ;

.                 {
                    printf("Carácter desconocido: %s\n", yytext);
                  }

%%

int main()
{
    yylex();
    return 0;
}
