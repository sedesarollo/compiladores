%{
	#include<stdio.h>
%}
%token  IDENTIFICADOR   TOSTRING PARENTESISA PARENTESISC CORCHETEA CORCHETEC LENGHT CONCAT NUM
%token  PUNTOCOMA PUNTO
%left  MULTIPLICACION
%left  DIVISION
%left  SUMA
%left  RESTA

%%
e	: e MULTIPLICACION e {printf ("\n Declaracion correcta REGLA MULTIPLICACION");}
	| e DIVISION e {printf ("\n Declaracion correcta REGLA DIVISION");}
	| e SUMA e {printf ("\n Declaracion correcta REGLA SUMA");}
	| e RESTA e {printf ("\n Declaracion correcta REGLA RESTA");}
	| NUM {printf ("\n Declaracion correcta REGLA NUME");}
	| IDENTIFICADOR  a {printf ("\n Declaracion correcta REGLA IDENTIFICADOR");}
	;
a	: CORCHETEA e CORCHETEC b
	| PUNTO LENGHT i
	| CONCAT PARENTESISA e PARENTESISC PUNTOCOMA
	| IDENTIFICADOR PUNTO TOSTRING PARENTESISA PARENTESISC PUNTOCOMA  {printf ("\n Declaracion correcta REGLA A");}
	;
b	: PUNTOCOMA
	| CORCHETEA e CORCHETEC PUNTOCOMA {printf ("\n Declaracion correcta REGLA B");}
	;
i	: PUNTOCOMA
	| PARENTESISA  PARENTESISC PUNTOCOMA {printf ("\n Declaracion correcta REGLA I");}
	;


%%	
#include "operacioneslogicaslex.c"
main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}
