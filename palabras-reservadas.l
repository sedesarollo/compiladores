%{
#include <stdio.h>
%}
%%
"//"[a-zA-Z0-9]*	{printf( "Un identificador: %s\n", yytext );}
[p][a][c][k][a][g][e]	{printf( "Un identificador: %s\n", yytext );}
[i][m][p][o][r][t]	{printf( "Un identificador: %s\n", yytext );}
[p][u][b][l][i][c]	{printf( "Un identificador: %s\n", yytext );}
[c][l][a][s][s]		{printf( "Un identificador: %s\n", yytext );}
[s][t][a][t][i][c]	{printf( "Un identificador: %s\n", yytext );}
[v][o][i][d]		{printf( "Un identificador: %s\n", yytext );}
[m][a][i][n]		{printf( "Un identificador: %s\n", yytext );}
[S][t][r][i][n][g]	{printf( "Un identificador: %s\n", yytext );}
[a][r][g][s]		{printf( "Un identificador: %s\n", yytext );}
[S][c][a][n][n][e][r]	{printf( "Un identificador: %s\n", yytext );}
[S][y][s][t][e][m]	{printf( "Un identificador: %s\n", yytext );}
[i][n]			{printf( "Un identificador: %s\n", yytext );}
[n][e][x][t]		{printf( "Un identificador: %s\n", yytext );}
[c][l][o][s][e]		{printf( "Un identificador: %s\n", yytext );}
[o][u][t]		{printf( "Un identificador: %s\n", yytext );}
[p][r][i][n][t][l][n]	{printf( "Un identificador: %s\n", yytext );}
[f][o][r]		{printf( "Un identificador: %s\n", yytext );}
[n][e][w]		{printf( "Un identificador: %s\n", yytext );}
[w][h][i][l][e]		{printf( "Un identificador: %s\n", yytext );}
[0-9]+			{printf( "Un identificador: %s\n", yytext );}
%%
main()
{
yylex();
}
