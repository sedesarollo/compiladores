%{
	#include<stdio.h>
%}
%token PUNTOCOMA COMA IDENTIFICADOR  ASIGNACION INT INTERGER SHORT CHAR TOSTRING FLOAT

%%
d	: t d PUNTOCOMA
	|d COMA IDENTIFICADOR
	| IDENTIFICADOR ASIGNACION d
	|e
	| IDENTIFICADOR {printf ("\n Declaracion correcta");}
	;
t	: INT
	|INTERGER
	|SHORT
	|CHAR
	|TOSTRING
	|FLOAT {printf ("\n Declaracion correcta");}
	;
e	: INT {printf ("\n Declaracion correcta");}
	;




%%
#include "declaracionlex.c"
main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}	
