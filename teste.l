%option noyywrap yylineno nodefault
%{

// yylineno    - variable to track line numbers 

#include "token.h"

%}

RW (array|boolean|else|false|function|if|integer|print|return|true|void|while)

SYM (+|-|*|/|%|!|<|>|=|:|;|,|(|)|[|]|{|})

SYMC (<=|>=|==|!=|&&|||)

%%

[0-9]+ 	{return NUM;}

{RW}	{return KEY;}

{SYM}	{return SYM;}

{SYMC}	{return SYMC;}

([a-z]|[A-Z])([a-z]|[A-Z]|[0-9]|_){0,[255]}	{return ID;}

[ \t\r]   { /* ignore whitespace */ }

"//".*	{ /* ignore commentary */}

\n      { return EOL; } 
.   	{ return ERROR;}
%%
