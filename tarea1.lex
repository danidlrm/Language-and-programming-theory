%{
#include <math.h>

%}

%option noyywrap

DIGIT   [0-9]
ID      [a-z][a-z0-9]*

%%




int main()
{
    yylex();
    printf("OK. Análisis Exitoso");
    return 0;
}
