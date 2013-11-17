
%{
#include <stdio.h>

%}
%token  ID 
%token  NUM 
%token NUMREAL
%token CADENA 
%token  CHAR
%token  INTEGER
%token  REAL
%token ARRAY DE NUEVA INICIO CONST DO ELSE END FOR IF NOT AND OR
%token PROCEDURE PROGRAM READ REPEAT THEN TO MOD DIV OF POW SQRT
%token UNTIL VAR WHILE WITH WRITE MY ME MYI MEI DIST
%left '+' '-'
%left '*' '/'
%%
l : l o NUEVA			
  | o NUEVA			
  | l error			
  ;
o : PROGRAM ID ';' NUEVA a '.'	 
  ;
a : CONST NUEVA d NUEVA f		
  | f				
  ;
d : ID '=' e ';'		 		
  | d NUEVA ID '=' e ';'	
  ;
f : VAR NUEVA g		
  ;
g : y u	 			
  | g NUEVA y u			
  | g NUEVA n			
  ;
u : ':' m ';'					
  | ':' '^' m ';'				
  | ':' ARRAY '[' p '.' '.' p ']' OF m ';'	
  ;
m : INTEGER					
  | CHAR			
  | REAL			
  ;
n : INICIO NUEVA h NUEVA END 	
  ;
h : s 			
  | h NUEVA s 			
  ;
s : IF '(' c ')'THEN NUEVA r ';'   	
  | WHILE '(' c ')' x		
  | REPEAT s UNTIL '(' c ')' ';' 
  | FOR ID DE NUM TO NUM x	
  | READ '(' ID	')' ';'		
  | WRITE '(' e ')' ';'		
  | WRITE '(' ID '[' NUM ']' ')' ';' 
  | e ';'			
  | ID DE e ';'			
  | ID '[' NUM ']' DE e ';'	
  ;
x : DO NUEVA n ';'		
  ;
r : n 
  | r NUEVA ELSE NUEVA n	
  ;
c : c AND t 			
  | c OR t 			
  | NOT t 			
  | t 				
t : ID '=' e			
  | ID ME e			
  | ID MY e			
  | ID MEI e			
  | ID MYI e			
  | ID DIST e			
  ;
e : e '+' b			
  | e '-' b			
  ;
b : b '*' p			
  | b '/' p			
  | b DIV p			
  | b MOD p			
  | p				
  ;
p : '(' e ')'			
  | POW '(' e ',' e ')'         
  | NUM				
  | NUMREAL			
  | CADENA			
  | ID				
  ;
y : ID				
  | y ',' ID			
  ;
%%

#include "lexico.c"
main()
{
	yyparse();
}

yyerror()
{
printf("\n Error de Sintaxis");
}

