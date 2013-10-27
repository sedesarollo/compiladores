%{
#include <stdio.h>
%}
palabra		[a-z A-Z]*|[a-z A-Z 0-9]*

%%
=					{return (ASIGNACION);}
==					{return (IGUALIGUAL);}
"||"					{return (OR);}
"!="					{return (DIFERENTE);}
"<="					{return (MENORIGUAL);}
">="					{return (MAYORIGUAL);}
[">"|"<"|"&&"]				{return (OPERADORESLOGICOS);}
[0-9]+					{return (NUMERO);}
[a-zA-Z0-9]*				{return (IDENTIFICADOR);}
\"{palabra}\"				{return (PALABRA);}
[0-9]*\.[0-9]+				{return (NUMEROREAL);}
["+"|[-]|"/"|"*"|"%"]			{return (OPERADORESARIT);}
.					{;} 
%%
