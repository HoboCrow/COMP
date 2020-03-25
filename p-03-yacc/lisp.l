%{
    #include "y.tab.h"
%}

numbers     [0-9]+

%%

[-+()/*]    {return *yytext;}
{numbers}   {yylval=atoi(yytext); return NUMBER;}
\n          return 0;
.           ;
%%

int yywrap() {
    return 1;
}