%{
	#include<stdio.h>  /* CODIGO DE SENTENCIAS CON ELIMINACION DE AMBIGUEDAD */
%}
%token IDENTIFICADOR INT  SALTO ASIGNACION CORCHETEA CORCHETEC PARENTESISA PARENTESISC PUNTO PUNTOCOMA
%token FLOAT SHORT CHAR STRING INTEGER TOSTRING NEXT NUM
%%
p	: p  s SALTO					 {printf ("\n Declaracion correcta DE LA REGLA P1");}
	|s 						 {printf ("\n Declaracion correcta DE LA REGLA P2");}
	;
s	: IDENTIFICADOR f
	;
f	: ASIGNACION e PUNTOCOMA
	| ASIGNACION IDENTIFICADOR PUNTOCOMA
	| CORCHETEA e CORCHETEC w
	;
w	: ASIGNACION e PUNTOCOMA
	| CORCHETEA e CORCHETEC ASIGNACION e PUNTOCOMA 

e	: IDENTIFICADOR 
	| NUM {printf ("\n Declaracion correcta DE LA REGLA E");}
	;

%%
#include "sentencia_lex.c"
main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}
