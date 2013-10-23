%{
#include <stdio.h>
%}
%%
"//"[a-zA-Z0-9]*	{printf( "Comentario: %s\n", yytext );}
[(]			{printf( "Parentesis Abierto: %s\n", yytext );}
[)]			{printf( "Parentesis Cerrado: %s\n", yytext );}
[p][a][c][k][a][g][e]	{printf( "package: %s\n", yytext );}
[i][m][p][o][r][t]	{printf( "import: %s\n", yytext );}
[p][u][b][l][i][c]	{printf( "public: %s\n", yytext );}
[c][l][a][s][s]		{printf( "class: %s\n", yytext );}
[s][t][a][t][i][c]	{printf( "static: %s\n", yytext );}
[v][o][i][d]		{printf( "void: %s\n", yytext );}
[m][a][i][n]		{printf( "main: %s\n", yytext );}
[S][t][r][i][n][g]	{printf( "String: %s\n", yytext );}
[a][r][g][s]		{printf( "args: %s\n", yytext );}
[S][c][a][n][n][e][r]	{printf( "Scanner: %s\n", yytext );}
[S][y][s][t][e][m]	{printf( "System: %s\n", yytext );}
[i][n]			{printf( "in: %s\n", yytext );}
[n][e][x][t]		{printf( "next: %s\n", yytext );}
[c][l][o][s][e]		{printf( "close: %s\n", yytext );}
[o][u][t]		{printf( "out: %s\n", yytext );}
[p][r][i][n][t][l][n]	{printf( "println: %s\n", yytext );}
[f][o][r]		{printf( "for: %s\n", yytext );}
[n][e][w]		{printf( "new: %s\n", yytext );}
[w][h][i][l][e]		{printf( "while: %s\n", yytext );}
[e][l][s][e]		{printf( "else: %s\n", yytext );}
[d][o]			{printf( "do: %s\n", yytext );}
[i][n][t]		{printf( "int: %s\n", yytext );}
[f][l][o][a][t]		{printf( "float: %s\n", yytext );}
[s][h][o][r][t]		{printf( "short: %s\n", yytext );}
[c][h][a][r]		{printf( "char: %s\n", yytext );}
[l][e][n][g][t][h]	{printf( "length: %s\n", yytext );}
[c][o][n][c][a][t]	{printf( "concat: %s\n", yytext );}
[I][n][t][e][g][e][r]	{printf( "Integer: %s\n", yytext );}
[t][o][S][t][r][i][n][g][(][)] {printf( "toString: %s\n", yytext );}
[{]			{printf( "Llave abierta: %s\n", yytext );}
[}]			{printf( "Llave cerrada: %s\n", yytext );}
.			{printf( "Error: %s\n", yytext );}
%%
main()
{
yylex();
}
