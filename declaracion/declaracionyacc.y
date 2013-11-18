%{
	#include<stdio.h>
%}
%token PUNTOCOMA COMA IDENTIFICADOR  ASIGNACION INT INTEGER SHORT CHAR TOSTRING FLOAT CORCHETEA CORCHETEC NEW NUM ESPACIO

%%

	
d	: t d PUNTOCOMA  				{printf ("\n RECONOCIDO LA SINTASIS REGLA T D;");}
	| d COMA IDENTIFICADOR 				{printf ("\n REGLA D,ID");}
	| IDENTIFICADOR ASIGNACION d PUNTOCOMA    	{printf ("\n REGLA ID=D;");}				
	| IDENTIFICADOR					{printf ("\n REGLA ID");}
	| t IDENTIFICADOR CORCHETEA CORCHETEC ASIGNACION NEW t CORCHETEA e CORCHETEC PUNTOCOMA{printf ("\n REGLA VECTOR ");}
	| CORCHETEA CORCHETEC ASIGNACION NEW t CORCHETEA e CORCHETEC CORCHETEA e CORCHETEC {printf ("\n REGLA MATRIZ");}
	;
t	: INT 						{printf ("\n REGLA INT");}
	| INTEGER 					{printf ("\n REGLA INTEGER");}
	| SHORT 						{printf ("\n REGLA SHORT");}
	| CHAR 						{printf ("\n REGLA CHAR");}
	| TOSTRING					 {printf ("\n REGLA TOSTRING");}
	| FLOAT 						{printf ("\n FLOAT");}
	;
e	: IDENTIFICADOR					 {printf ("\n REGLA E INDENTIFICADOR");}
	| NUM						{printf ("\n REGLA E NUMERO");}
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
