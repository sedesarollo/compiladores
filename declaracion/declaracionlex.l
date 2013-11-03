%{
#include <stdio.h>
%}


%%
[i][n][t]					{return (INT);}
[I][n][t][e][g][e][r]				{return (INTEGER);}
[s][h][o][r][t]					{return (SHORT);}
[c][h][a][r]					{return (CHAR);}
[t][o][S][t][r][i][n][g] 			{return (TOSTRING);}
[f][l][o][a][t]					{return (FLOAT);}
[;]						{return (PUNTOCOMA);}
[,]						{return (COMA);}
[a-zA-Z0-9]*					{return (IDENTIFICADOR);}
=						{return (ASIGNACION);}
.						{;} 
%%
