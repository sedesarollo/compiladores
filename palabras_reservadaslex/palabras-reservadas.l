%{
#include <stdio.h>
%}
%%
"//"[a-zA-Z0-9]*				{return (COMENTARIO);}
("/*"[a-zA-Z0-9]*|[a-zA-Z0-9 "\n"]*"*/")	{return (COMENTARIOM);}
[(]						{return (PARENTESISA);}
[)]						{return (PARENTESISC);}
[e][p][s][i][l][o][n]                           {return (EPSILON);}
[p][a][c][k][a][g][e]				{return (PACKAGE);}
[i][m][p][o][r][t]				{return (IMPORT);}
[p][u][b][l][i][c]				{return (PUBLIC);}
[c][l][a][s][s]					{return (CLASS);}
[s][t][a][t][i][c]				{return (STATIC);}
[v][o][i][d]					{return (VOID);}
[m][a][i][n]					{return (MAIN);}
[S][t][r][i][n][g]				{return (STRING);}
[a][r][g][s]					{return (ARGS);}
[S][c][a][n][n][e][r]				{return (SCANNER);}
[S][y][s][t][e][m]				{return (SYSTEM);}
[i][n]						{return (IN);}
[n][e][x][t]					{return (NEXT);}
[c][l][o][s][e]					{return (CLOSE);}
[o][u][t]					{return (OUT);}
[p][r][i][n][t][l][n]				{return (PRINTLN);}
[f][o][r]					{return (FOR);}
[n][e][w]					{return (NEW);}
[w][h][i][l][e]					{return (WHILE);}
[e][l][s][e]					{return (ELSE);}
[d][o]						{return (DO);}
[i][n][t]					{return (INT);}
[f][l][o][a][t]					{return (FLOAT);}
[s][h][o][r][t]					{return (SHORT);}
[c][h][a][r]					{return (CHAR);}
[l][e][n][g][t][h]				{return (LENGTH);}
[c][o][n][c][a][t]				{return (CONCAT);}
[I][n][t][e][g][e][r]				{return (INTEGER);}
[t][o][S][t][r][i][n][g] 			{return (TOSTRING);}
[i][f]						{return (IF);}
[{]						{return (LLAVEA);}
[}]						{return (LLAVEC);}
[,]						{return (COMA);}
[;]						{return (PUNTOCOMA);}
[.]						{return (PUNTO);}
\n						{return (SALTO);}
\t						{return (TABULADOR);}
.						{;}
%%
