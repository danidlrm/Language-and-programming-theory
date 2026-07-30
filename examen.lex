%{
    

%}

%option noyywrap

NUM [0-9]


%%

{NUM}+   { printf( "Entero: %s\n", yytext );
}

,       printf( "Coma: %s\n", yytext );

-       printf( "Guión: %s\n", yytext );

.       printf("Carácter desconocido: %s\n", yytext);


%%


int main()
{
    yylex();
    printf("si funciona");
    return 0;

}