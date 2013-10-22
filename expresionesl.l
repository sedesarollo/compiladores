%{
#include <stdio.h>
%}
palabra		[a-z A-Z]*|[a-z A-Z 0-9]*

%%
=					{printf( "ASIGNACION: %s\n", yytext );}
==					{printf( "COMPARACION: %s\n", yytext );}
"||"					{printf( "OPERADORES LOGICOS or: %s\n", yytext );}
"!="					{printf( "OPERADORES LOGICOS !=: %s\n", yytext );}
"<="					{printf( "OPERADORES LOGICOS <=: %s\n", yytext );}
">="					{printf( "OPERADORES LOGICOS >=: %s\n", yytext );}
[">"|"<"|"&&"]				{printf( "OPERADORES LOGICOS: %s\n", yytext );}
[0-9]+					{printf( "NUMERO: %s\n", yytext );}
[a-zA-Z0-9]*				{printf( "IDENTIFICADOR: %s\n", yytext );}
\"{palabra}\"				{printf( "PALABRA: %s\n", yytext );}
[0-9]*\.[0-9]+				{printf( "NUMERO REAL: %s\n", yytext );}
["+"|[-]|"/"|"*"|"%"]			{printf( "OPERADORES ARITMETICO: %s\n", yytext );}
.					{printf( "ERROR: %s\n", yytext );} 
%%
main()
{	
yylex();
}