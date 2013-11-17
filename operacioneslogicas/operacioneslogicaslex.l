%{
#include <stdio.h>
%}
%%
[l][e][n][g][t][h]				{return (LENGHT);}
[c][o][n][c][a][t]				{return (CONCAT);}
[t][o][S][t][r][i][n][g] 			{return (TOSTRING);}
"+"						{return (SUMA);}
"-"						{return (RESTA);}
"/"						{return (DIVISION);}
"*"						{return (MULTIPLICACION);}
[0-9]*						{return (NUM);}
[a-zA-Z0-9]*					{return (IDENTIFICADOR);}
[(]						{return (PARENTESISA);}
[)]						{return (PARENTESISC);}
[.]						{return (PUNTO);}
"["						{return (CORCHETEA);}
"]"						{return (CORCHETEC);}
	
.						{;}
%% 