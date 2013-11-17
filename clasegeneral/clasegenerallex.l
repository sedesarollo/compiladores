%{
#include <stdio.h>
%}
IDCLASS		[A-Z][a-zA-Z0-9]*
ID		[a-zA-Z0-9]*
ESPACIOS 	[\t\n]
E		" "
%%
{ESPACIOS}*						{return (ESPACIOS);}
[p][u][b][l][i][c]				{return (PUBLIC);}
[c][l][a][s][s]					{return (CLASS);}
[s][t][a][t][i][c]				{return (STATIC);}
[v][o][i][d]					{return (VOID);}
[m][a][i][n]					{return (MAIN);}
[S][t][r][i][n][g]				{return (STRING);}
[a][r][g][s]					{return (ARGS);}
[c][l][o][s][e]					{return (CLOSE);}
"{"						{return (LLAVEA);}
"}"						{return (LLAVEC);}
"["						{return (CORCHETEA);}
"]"						{return (CORCHETEC);}
"("						{return (PARENTESISA);}
")"						{return (PARENTESISC);}
";"						{return (PUNTOCOMA);}
\.						{return (PUNTO);}	
{IDCLASS}					{return (IDENTIFICADORCLASS);}
{ID}						{return (IDENTIFICADOR);}
.							{;} 
%%
