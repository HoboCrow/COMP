%{
    #include "y.tab.h"
%}

numbers     [0-9]+

%%

[-+()/*]                {return *yytext;}
{numbers}               {yylval.ival=atoi(yytext); return NUMBER;}
{numbers}\.{numbers}    {yylval.dval=atof(yytext); return REAL;}
\n          return 0;
.           ;
%%

int yywrap() {
    return 1;
}