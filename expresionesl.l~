%{
#include <stdio.h>
%}
%%
\=				{printf( "Un identificador: %s\n", yytext );}
('"')[a-z A-Z 0-9]*('"')	{printf( "Un identificador: %s\n", yytext );}
[0-9]+				{printf( "Un identificador: %s\n", yytext );}
[a-zA-Z0-9]*			{printf( "Un identificador: %s\n", yytext );}
[0-9]*\.[0-9]+			{printf( "Un identificador: %s\n", yytext );}
[">"|"<"|"=="|"!="|"&&"|"<="|">="|"||"]	{printf( "Un identificador: %s\n", yytext );}
. 
%%
main()
{	
yylex();
}
