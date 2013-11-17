%{
	#include<stdio.h>	
%}
%token  COMENTARIOUNALINEA EPSILON COMENTARIOM
%%
j	: j q  
	| q  
	| EPSILON  {printf ("\n Declaracion correcta");}
	;
q	: COMENTARIOUNALINEA {printf ("\n Declaracion correcta");} 
	| COMENTARIOM {printf ("\n Declaracion correcta");}
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
