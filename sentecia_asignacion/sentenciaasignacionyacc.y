%{
	#include<stdio.h>
%}
%token IDENTIFICADOR INT  SALTO ASIGNACION CORCHETEA CORCHETEC PARENTESISA PARENTESISC PUNTO PUNTOCOMA
%token FLOAT SHORT CHAR STRING INTEGER TOSTRING
%%
p	: p  s SALTO
	|s {printf ("\n Declaracion correcta DE LA REGLA P");}
	;
s	: IDENTIFICADOR ASIGNACION g  
	| IDENTIFICADOR CORCHETEA e CORCHETEA h  {printf ("\n Declaracion correcta DE LA REGLA S");}
	;
g	: e PUNTOCOMA
	| IDENTIFICADOR PUNTOCOMA {printf ("\n Declaracion correcta DE LA REGLA G");}
	;
h	: ASIGNACION e
	| CORCHETEA e CORCHETEC ASIGNACION e PUNTOCOMA {printf ("\n Declaracion correcta DE LA REGLA H");}
	;
e	:  t {printf ("\n Declaracion correcta DE LA REGLA H");}
	;
t	: INT
	| FLOAT
	| SHORT
	| CHAR
	| STRING 
	| INTEGER
	| TOSTRING {printf ("\n Declaracion correcta DE LA REGLA T");}
	;



%%
#include "sentenciaasignacionlex.c"
main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}
