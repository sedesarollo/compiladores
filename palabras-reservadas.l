%{
#include <stdio.h>
%}
%%
"//"[a-zA-Z0-9]*				{printf( "Comentario: %s\n", yytext ); return (COMENTARIO);}
("/*"[a-zA-Z0-9]*|[a-zA-Z0-9 "\n"]*"*/")	{printf( "Comentario Multiple: %s\n", yytext ); return (COMENTARIOM);}
[(]						{printf( "Parentesis Abierto: %s\n", yytext ); return (PARENTESISA);}
[)]						{printf( "Parentesis Cerrado: %s\n", yytext ); return (PARENTESISC);}
[p][a][c][k][a][g][e]				{printf( "package: %s\n", yytext ); return (PACKAGE);}
[i][m][p][o][r][t]				{printf( "import: %s\n", yytext ); return (IMPORT);}
[p][u][b][l][i][c]				{printf( "public: %s\n", yytext ); return (PUBLIC);}
[c][l][a][s][s]					{printf( "class: %s\n", yytext ); return (CLASS);}
[s][t][a][t][i][c]				{printf( "static: %s\n", yytext ); return (STATIC);}
[v][o][i][d]					{printf( "void: %s\n", yytext ); return (VOID);}
[m][a][i][n]					{printf( "main: %s\n", yytext ); return (MAIN);}
[S][t][r][i][n][g]				{printf( "String: %s\n", yytext ); return (STRING);}
[a][r][g][s]					{printf( "args: %s\n", yytext ); return (ARGS);}
[S][c][a][n][n][e][r]				{printf( "Scanner: %s\n", yytext ); return (SCANNER);}
[S][y][s][t][e][m]				{printf( "System: %s\n", yytext ); return (SYSTEM);}
[i][n]						{printf( "in: %s\n", yytext ); return (IN);}
[n][e][x][t]					{printf( "next: %s\n", yytext ); return (NEXT);}
[c][l][o][s][e]					{printf( "close: %s\n", yytext ); return (CLOSE);}
[o][u][t]					{printf( "out: %s\n", yytext ); return (OUT);}
[p][r][i][n][t][l][n]				{printf( "println: %s\n", yytext ); return (PRINTLN);}
[f][o][r]					{printf( "for: %s\n", yytext ); return (FOR);}
[n][e][w]					{printf( "new: %s\n", yytext ); return (NEW);}
[w][h][i][l][e]					{printf( "while: %s\n", yytext ); return (WHILE);}
[e][l][s][e]					{printf( "else: %s\n", yytext ); return (ELSE);}
[d][o]						{printf( "do: %s\n", yytext ); return (DO);}
[i][n][t]					{printf( "int: %s\n", yytext ); return (INT);}
[f][l][o][a][t]					{printf( "float: %s\n", yytext ); return (FLOAT);}
[s][h][o][r][t]					{printf( "short: %s\n", yytext ); return (SHORT);}
[c][h][a][r]					{printf( "char: %s\n", yytext ); return (CHAR);}
[l][e][n][g][t][h]				{printf( "length: %s\n", yytext ); return (LENGTH);}
[c][o][n][c][a][t]				{printf( "concat: %s\n", yytext ); return (CONCAT);}
[I][n][t][e][g][e][r]				{printf( "Integer: %s\n", yytext ); return (INTEGER);}
[t][o][S][t][r][i][n][g] 			{printf( "toString: %s\n", yytext );return (TOSTRING);}
[i][f]						{printf( "Sentencia IF: %s\n", yytext ); return (IF);}
[{]						{printf( "Llave abierta: %s\n", yytext ); return (LLAVEA);}
[}]						{printf( "Llave cerrada: %s\n", yytext ); return (LLAVEC);}
[,]						{printf( "Coma %s\n", yytext ); return (COMA);}
[;]						{printf( "Punto y coma %s\n", yytext ); return (PUNTOCOMA);}
[.]						{printf( "Punto %s\n", yytext ); return (PUNTO);}
\n						{printf( "Salto de Linea %s\n", yytext ); return (SALTO);}
\t						{printf( "Tabulador %s\n", yytext ); return (TABULADOR);}
.						{printf( "Error %s\n", yytext );;}

%%
main()
{
yylex();
}
