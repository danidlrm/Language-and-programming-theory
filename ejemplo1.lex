%{

/* necesaria para la llamada a atof() */
#include <math.h>

%}

%option noyywrap

DIGIT   [0-9]
ID      [a-z][a-z0-9]*

%%

{DIGIT}+                {
                        printf( "Entero: %s (%d)\n", yytext,
                        atoi( yytext ) );
                        }

{DIGIT}+"."{DIGIT}* {
                        printf( "Punto flotante: %s (%g)\n", yytext,
                        atof( yytext ) );
                        }

if|then|begin|end|procedure|function       {
                        printf( "Palabra reservada: %s\n", yytext );
                        }

{ID}                    printf( "Identificador: %s\n", yytext );

"+"|"-"|"*"|"/"         printf( "Operador: %s\n", yytext );

"{"[^}\n]*"}"           /* se salta los comentarios de una linea */

[ \t\n]+                /* se salta los espacios */

.                       printf( "Carácter desconocido: %s\n", yytext );


%%
int main()
{
    yylex();
    printf("OK. Análisis Exitoso");
    return 0;
}
