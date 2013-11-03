%{
	#include<stdio.h>	
%}
%token  COMENTARIO COMENTARIOM EPSILON

%%
j	: j q | q |EPSILON  {printf ("\n Declaracion correcta");}
	;
q	: COMENTARIO | COMENTARIOM{printf ("\n Declaracion correcta");}
	;

%%
#include "comentariolex.c"
main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}	
