%{
#include <stdio.h>
%}
e " "
%%
{e}*[Pp][Rr][Oo][Gg][Rr][Aa][Mm]{e}* 	{return(PROGRAM);}
\n 					{return(NUEVA);}
{e}*[a-zA-Z]+[0-9]*{e}* 		{return(ID);}
. 					{;}
%%
