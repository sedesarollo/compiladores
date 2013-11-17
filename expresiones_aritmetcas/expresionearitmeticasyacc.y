%{
	#include<stdio.h>
%}
%token  IDENTIFICADOR  INT FLOAT SHORT CHAR STRING INTEGER TOSTRING  
%left  MULTIPLICACION
%left  DIVISION
%left  SUMA
%left  RESTA

%%
e	: e MULTIPLICACION e
	| e DIVISION e
	| e SUMA e
	| e RESTA e
	| IDENTIFICADOR {printf ("\n Declaracion correcta");}
	;

%%
#include "expresionesaritmeticaslex.c"
main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}	
