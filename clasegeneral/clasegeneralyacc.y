%{
	#include<stdio.h>
	int yylex(void);	
%}
%token PUBLIC CLASS IDENTIFICADORCLASS LLAVEA LLAVEC STATIC VOID MAIN PARENTESISA PARENTESISC STRING CORCHETEA CORCHETEC PUNTO 
%token CLOSE PUNTOCOMA ARGS ESPACIOS IDENTIFICADOR
%start z
%%
z	: k ESPACIOS c
	| z error
	| error
	;
k	: 
c	: PUBLIC CLASS IDENTIFICADORCLASS LLAVEA ESPACIOS m ESPACIOS LLAVEC ESPACIOS {printf ("\n Declaracion 1 correcta");}
	;
m	: PUBLIC STATIC VOID MAIN PARENTESISA STRING CORCHETEA CORCHETEC ARGS PARENTESISC LLAVEA ESPACIOS p ESPACIOS LLAVEC {printf ("\n Declaracion 2 correcta");}
	;
p	: p ESPACIOS s {printf ("\n Declaracion 3 correcta");}
	| s {printf ("\n Declaracion 4 correcta");}
	;
s	: IDENTIFICADOR PUNTO CLOSE PARENTESISA PARENTESISC PUNTOCOMA {printf ("\n Declaracion 5 correcta");}
	;
%%
#include "clasegenerallex.c"
#include "/home/ricardo/facultad/compiladores-I/compiladores-I-TP/"
int main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}	
