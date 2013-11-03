%{
#include <stdio.h>
%}


%%
[p][a][c][k][a][g][e]				{return (PACKAGE);}
[a-zA-Z0-9]*					{return (IDENTIFICADOR);}
[;]						{return (PUNTOCOMA);}
[.]						{return (PUNTO);}
.						{;} 
%%
