%{
#include <stdio.h>



%}
espacio " "
espacios [ \t\n]
%%
[l][e][n][g][t][h]				{return (LENGTH);}
[c][o][n][c][a][t]				{return (CONCAT);}
[t][o][S][t][r][i][n][g] 			{return (TOSTRING);}
[i][m][p][r][i][m][i][r] 			{return (IMPRIMIR);}
[l][e][e][r]					{return (LEER);}
"+"						{return (SUMA);}
"-"						{return (RESTA);}
"/"						{return (DIVISION);}
"*"						{return (MULTIPLICACION);}
"("						{return (PARENTESISA);}
")"						{return (PARENTESISC);}
\.						{return (PUNTO);}
"["						{return (CORCHETEA);}
"]"						{return (CORCHETEC);}
"="						{return (ASIGNACION);}
";"						{return (PUNTOCOMA);}
"<"						{return (MENORQ);}
">"						{return (MAYORQ);}
"=>"						{return (IGUALMAYOR);}
"<="						{return (IGUALMENOR);}
"!="						{return (DIFERENTE);}						
"&&"						{return (AND);}
"|"						{return (OR);}
[0-9]*						{return (NUM);}
[0-9]*\.[0-9]+					{return (NUMEROREAL);}
[a-zA-Z0-9]*					{return (IDENTIFICADOR);}	
{espacios}*					{return ESPACIOS;}
.						{;}
%% 
