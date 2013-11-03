%{
	#include<stdio.h>	
%}
%token PUBLIC CLASS IDENTIFICADOR LLAVEA LLAVEC STATIC VOID MAIN PARENTESISA PARENTESISC STRING CORCHETEA CORCHETEC PUNTO CLOSE PUNTOCOMA ARGS SALTO

%%
c	: PUBLIC CLASS IDENTIFICADOR LLAVEA SALTO m  LLAVEC  {printf ("\n Declaracion correcta");}
	;
m	: PUBLIC STATIC VOID MAIN PARENTESISA STRING CORCHETEA CORCHETEC ARGS PARENTESISA LLAVEA SALTO p LLAVEC  {printf ("\n Declaracion correcta");}
	;
p	: p s 
	| s  {printf ("\n Declaracion correcta");}
	;
s	: IDENTIFICADOR PUNTO CLOSE PARENTESISA PARENTESISC PUNTOCOMA {printf ("\n Declaracion correcta");}
	;
%%
#include "clasegenerallex.c"
main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}	
