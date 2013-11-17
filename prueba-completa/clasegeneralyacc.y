%{
	#include<stdio.h>
	int yylex(void);
	int contadorLinea = 0;
	int lineaError= 0;	
%}
%token PUBLIC CLASS IDENTIFICADORCLASS LLAVEA LLAVEC STATIC VOID MAIN PARENTESISA PARENTESISC STRING CORCHETEA CORCHETEC PUNTO 
%token CLOSE PUNTOCOMA ARGS ESPACIOS IDENTIFICADOR PACKAGE COMENTARIOUNALINEA COMENTARIOM
%start z
%%
z	: k ESPACIOS c {contadorLinea++; lineaError = contadorLinea; printf("\n Declaracion Z1 correcta, linea %d \n \n", contadorLinea);}
	| z error
	| error
	;

k	: PACKAGE k PUNTOCOMA {contadorLinea++; lineaError = contadorLinea; printf("\n Declaracion K1 correcta, linea %d \n", contadorLinea);}
	| k PUNTO IDENTIFICADOR {contadorLinea++; lineaError = contadorLinea; printf("\n Declaracion K2 correcta, linea %d \n", contadorLinea);}
	| IDENTIFICADOR {contadorLinea++; lineaError = contadorLinea; printf("\n Declaracion K3 correcta, linea %d \n", contadorLinea);}
	;

c	: PUBLIC CLASS IDENTIFICADORCLASS LLAVEA ESPACIOS m ESPACIOS LLAVEC ESPACIOS {contadorLinea++; lineaError = contadorLinea; 
									printf ("\n Declaracion C1 correcta, linea %d \n", contadorLinea);}
	;

m	: PUBLIC STATIC VOID MAIN PARENTESISA STRING CORCHETEA CORCHETEC ARGS PARENTESISC LLAVEA ESPACIOS p ESPACIOS LLAVEC {contadorLinea++;
						lineaError = contadorLinea; printf ("\n Declaracion M1 correcta, linea %d \n", contadorLinea);}
	;

p	: p ESPACIOS s {contadorLinea++; lineaError = contadorLinea; printf("\n Declaracion P1 correcta, linea %d \n", contadorLinea);}
	| s {contadorLinea++; lineaError = contadorLinea; printf("\n Declaracion P2 correcta, linea %d \n", contadorLinea);}
	;

s	: IDENTIFICADOR PUNTO CLOSE PARENTESISA PARENTESISC PUNTOCOMA {contadorLinea++; lineaError = contadorLinea; 
						printf("\n Declaracion S1 correcta, linea %d \n", contadorLinea);}
	;

%%
#include "clasegenerallex.c"
int main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
printf("\n Linea: %d \n",lineaError);
}	
