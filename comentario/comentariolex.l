%{
#include <stdio.h>
%}
%%
("//"[a-zA-Z0-9]*)				{return (COMENTARIO);}
("/*"[a-zA-Z0-9]*|[a-zA-Z0-9 "\n"]*"*/")	{return (COMENTARIOM);}
""			                          {return (EPSILON);}
.					{;} 
%%
