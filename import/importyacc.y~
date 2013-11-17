%{
	#include<stdio.h>
%}
%token IMPORT IDENTIFICADOR  PUNTOCOMA PUNTO

%%
l	: IMPORT l PUNTOCOMA
	|l PUNTO IDENTIFICADOR
	| IDENTIFICADOR {printf ("\n Declaracion correcta");}
	;


%%
#include "importlex.c"
main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}	
