%{
#include <stdio.h>
%}
e " "
%%
{e}*[Bb][Ee][Gg][Ii][Nn]{e}* 					{return(INICIO);}
{e}*[Aa][Nn][Dd]{e}* 						{return(AND);}
{e}*[Cc][Oo][Nn][Ss][Tt]{e}* 					{return(CONST);}
{e}*[Dd][Oo]{e}* 						{return(DO);}
{e}*[Ee][Ll][Ss][Ee]{e}* 					{return(ELSE);}
{e}*[Ee][Nn][Dd]{e}* 						{return(END);}
{e}*[Ff][Oo][Rr]{e}* 						{return(FOR);}
{e}*[Ii][Ff]{e}* 						{return(IF);}
{e}*[Nn][Oo][Tt]{e}* 						{return(NOT);}
{e}*[Oo][Ff]{e}* 						{return(OF);}
{e}*[Oo][Rr]{e}* 						{return(OR);}
{e}*[Pp][Rr][Oo][Gg][Rr][Aa][Mm]{e}* 				{return(PROGRAM);}
{e}*[Rr][Ee][Pp][Ee][Aa][Tt]{e}* 				{return(REPEAT);}
{e}*[Tt][Hh][Ee][Nn]{e}* 					{return(THEN);}
{e}*[Tt][Oo]{e}* 						{return(TO);}
{e}*[Uu][Nn][Tt][Ii][Ll]{e}* 					{return(UNTIL);}
{e}*[Vv][Aa][Rr]{e}* 						{return(VAR);}
{e}*[Ww][Hh][Ii][Ll][Ee]{e}* 					{return(WHILE);}
{e}*[Ww][Ii][Tt][Hh]{e}* 					{return(WITH);}
{e}*[Aa][Rr][Rr][Aa][Yy]{e}* 					{return(ARRAY);}
{e}*[Ii][Nn][Tt][Ee][Gg][Ee][Rr]{e}* 				{return(INTEGER);}
{e}*[Rr][Ee][Aa][Ll]{e}* 					{return(REAL);}
{e}*[Cc][Hh][Aa][Rr]{e}* 					{return(CHAR);}
{e}*[Rr][Ee][Aa][Dd]{e}* 					{return(READ);}
{e}*[Ww][Rr][Ii][Tt][Ee]{e}* 					{return(WRITE);}
{e}*[Pp][Oo][Ww]{e}* 						{return(POW);}
{e}*[Ss][Qq][Rr][Tt]{e}* 					{return(SQRT);}
{e}*[Mm][Oo][Dd]{e}* 						{return(MOD);}
{e}*[Dd][Ii][Vv]{e}* 						{return(DIV);}
{e}*[a-zA-Z]+[0-9]*{e}* 					{return(ID);}
{e}*[0-9]+{e}* 								{return(NUM);}
{e}*[0-9]+\.[0-9]+{e}* 						{return(NUMREAL);}
{e}*\'[a-zA-Z]+\'{e}* 						{return(CADENA);}
{e}*:={e}* 									{return(DE);}
{e}*>{e}* 									{return(MY);}
{e}*<{e}* 									{return(ME);}
{e}*<={e}* 									{return(MEI);}
{e}*>={e}* 									{return(MYI);}
{e}*<>{e}* 									{return(DIST);}
\n 										{linea++; return(NUEVA);}
[\t\r\f] 									{}
. 											{return(yytext[0]);}
%%
