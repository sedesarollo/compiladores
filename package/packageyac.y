%{
	#include<stdio.h>
%}
%token PACKAGE IDENTIFICADOR  PUNTOCOMA PUNTO

%%
k	: PACKAGE k PUNTOCOMA
	|k PUNTO IDENTIFICADOR
	| IDENTIFICADOR {printf ("\n Declaracion correcta");}
	;


%%
#include "packagelex.c"
main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}	
