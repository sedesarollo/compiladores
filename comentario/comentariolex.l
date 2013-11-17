%{
#include <stdio.h>
%}
PALABRA 	[a-zA-Z0-9]*
ESPACIOS 	[\t\n]
%%
["//"][PALABRA]						{return (COMENTARIOUNALINEA);}
'\0'		 		                       	{return (EPSILON);}
(["/*"]({ESPACIOS}*{PALABRA}*{ESPACIOS}*)["*/"])	{return (COMENTARIOM);}
.					        	{;}
