%{
#include <stdio.h>
%}
%%
"("						{return (PARENTESISA);}
")"						{return (PARENTESISC);}
";"						{return (PUNTOCOMA);}
"."						{return (PUNTO);}
"["						{return (CORCHETEA);}
"]"						{return (CORCHETEC);}
\n						{return (SALTO);}
[i][n][t]					{return (INT);}
[f][l][o][a][t]					{return (FLOAT);}
[s][h][o][r][t]					{return (SHORT);}
[c][h][a][r]					{return (CHAR);}
[I][n][t][e][g][e][r]				{return (INTEGER);}
[t][o][S][t][r][i][n][g] 			{return (TOSTRING);}
[n][e][x][t]					{return (NEXT);}
[0-9]*						{return (NUM);}
[a-zA-Z0-9]*					{return (IDENTIFICADOR);}
.						{;} 
%%
