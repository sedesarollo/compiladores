%{
#include <stdio.h>
%}
%%
"+"						{return (SUMA);}
"-"						{return (RESTA);}
"/"						{return (DIVISION);}
"*"						{return (MULTIPLICACION);}
[a-zA-Z0-9]*					{return (IDENTIFICADOR);}
.						{;} 
%%[{]						{return (LLAVEA);}
[}]						{return (LLAVEC);}
[(]						{return (PARENTESISA);}
[)]						{return (PARENTESISC);}
[,]						{return (COMA);}
[.]						{return (PUNTO);}
