%{
#include <stdio.h>
%}
%%
[p][u][b][l][i][c]				{return (PUBLIC);}
[c][l][a][s][s]					{return (CLASS);}
[s][t][a][t][i][c]				{return (STATIC);}
[v][o][i][d]					{return (VOID);}
[m][a][i][n]					{return (MAIN);}
[S][t][r][i][n][g]				{return (STRING);}
[a][r][g][s]					{return (ARGS);}
[c][l][o][s][e]					{return (CLOSE);}
[{]						{return (LLAVEA);}
[}]						{return (LLAVEC);}
"["						{return (CORCHETEA);}
"]"						{return (CORCHETEC);}
[(]						{return (PARENTESISA);}
[)]						{return (PARENTESISC);}
[;]						{return (PUNTOCOMA);}
[.]						{return (PUNTO);}
\n						{return (SALTO);}	
[a-zA-Z0-9]*					{return (IDENTIFICADOR);}
.						{;} 
%%
