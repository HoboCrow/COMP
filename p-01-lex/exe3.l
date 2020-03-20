
%{
    int offset = 'A' - 'a';
%}

%%
[a-z]   {printf("%c",*yytext+offset);}
%%

int main()
{
yylex();
printf("\n");
return 0;
}

int yywrap()
{
return 1;
}
