%option noyywrap yylineno nodefault
%{

// yylineno    - variable to track line numbers 

#include "token.h"

%}

RW ("array","boolean","else","false","function","if","integer","print","return","true","void","while")

SS ("+"| -  *  /  %  !  <  >  =  : ;  ,  (  )  [  ]  {  })

SC


%%



[0-9]+ 	{return NUM;}

([a-z]|[A-Z])([a-z]|[A-Z]|[0-9]|_){0,[255]}	{return ID;}

{RW}	{return KEY;}

[ \t\r]   { /* ignore whitespace */ }

"//".*	{ /* ignore commentary */}

\n      { return EOL; } 
.   	{ return ERROR;}
%%





