%{
      #include <stdio.h>
%}
%token  ID  NUEVA PROGRAM

%%
l : l o NUEVA		
  | o NUEVA			
  | l error			{printf("\n reconocio la sentencia ..");}
  ;
o : PROGRAM ID ';' NUEVA ID '.'		
  ;
%%
#include"lexico1.c"
main()
{
	yyparse();
}

yyerror()
{
	printf("\n Error de Sintaxis");
}	
