%{
#include <stdio.h>
%}
e " "
%%
{e}*							{return (ESPACIO);}
{e}*[i][n][t]{e}*					{return (INT);}
{e}*[I][n][t][e][g][e][r]{e}*				{return (INTEGER);}
{e}*[s][h][o][r][t]{e}*					{return (SHORT);}
{e}*[c][h][a][r]{e}*					{return (CHAR);}
{e}*[t][o][S][t][r][i][n][g]{e}* 			{return (TOSTRING);}
{e}*[f][l][o][a][t]{e}*					{return (FLOAT);}
{e}*";"{e}*						{return (PUNTOCOMA);}
{e}*","{e}*						{return (COMA);}
{e}*"["{e}*						{return (CORCHETEA);}
{e}*"]"{e}*						{return (CORCHETEC);}
{e}*[0-9]*{e}*						{return (NUM);}
{e}*[a-zA-Z0-9]*{e}*					{return (IDENTIFICADOR);}
{e}*"="{e}*						{return (ASIGNACION);}
.							{;} 
%%
