%{
	#include<stdio.h>
%}
%token  IDENTIFICADOR   TOSTRING PARENTESISA PARENTESISC CORCHETEA CORCHETEC LENGTH CONCAT NUM ASIGNACION LEER IMPRIMIR
%token  PUNTOCOMA PUNTO MAYORQ MENORQ IGUALMAYOR IGUALMENOR DIFERENTE AND OR NUMEROREAL ESPACIOS
%left  MULTIPLICACION
%left  DIVISION
%left  SUMA
%left  RESTA

%%
e	: e MULTIPLICACION e {printf ("\n Declaracion correcta REGLA MULTIPLICACION");}
	| e DIVISION e {printf ("\n Declaracion correcta REGLA DIVISION");}
	| e SUMA e {printf ("\n Declaracion correcta REGLA SUMA");}
	| e ESPACIOS RESTA ESPACIOS e ESPACIOS {printf ("\n Declaracion correcta REGLA RESTA");}
	| NUM {printf ("\n Declaracion correcta REGLA NUMERO");}
	| NUMEROREAL  {printf ("\n Declaracion correcta REGLA NUMERO REAL");}
	| IDENTIFICADOR   {printf ("\n Declaracion correcta REGLA IDENTIFICADOR");}
	| IDENTIFICADOR PUNTO LENGTH PUNTOCOMA {printf ("\n Declaracion correcta REGLA ID.LENGTH;");}
	| IDENTIFICADOR PUNTO LENGTH PARENTESISA PARENTESISC PUNTOCOMA {printf ("\n Declaracion correcta REGLA ID.LENGTH();");}
	| IDENTIFICADOR PUNTO CONCAT PARENTESISA e PARENTESISC PUNTOCOMA {printf ("\n Declaracion correcta REGLA ID.CONCAT(E);");}
	| IDENTIFICADOR ASIGNACION IDENTIFICADOR PUNTO TOSTRING PARENTESISA PARENTESISC PUNTOCOMA {printf ("\n Declaracion correcta REGLA ID=ID.TOSTRING();");}
	| LEER PARENTESISA e PARENTESISC PUNTOCOMA {printf ("\n Declaracion correcta REGLA LEER(E);");}
	| IMPRIMIR PARENTESISA e PARENTESISC PUNTOCOMA  {printf ("\n Declaracion correcta IMPRIMIR(E);");}
	| ol {printf ("\n Declaracion correcta REGLA OL;");}
	;
ol	: e MAYORQ e  		 {printf ("\n Declaracion correcta e>e;");}
	| e MENORQ e		 {printf ("\n Declaracion correcta e<e;");}
	| e IGUALMAYOR e	 {printf ("\n Declaracion correcta e>=e;");}
	| e IGUALMENOR e	 {printf ("\n Declaracion correcta e<=e;");}
	| e DIFERENTE e		 {printf ("\n Declaracion correcta e!=e;");}
	| ol AND ol		 {printf ("\n Declaracion correcta e&&e;");}
	| ol OR ol		 {printf ("\n Declaracion correcta e|e;");}
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
