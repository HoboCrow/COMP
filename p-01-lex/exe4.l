
%{
    int numemails = 0;
%}
whitespace [\n\t ]
valid_st    [^\t\n ;,"@.]+
%%
({valid_st}\.?)*{valid_st}@({valid_st}\.)+{valid_st}    { if (numemails++) printf(", "); printf("%s",yytext);}
.|{whitespace}           {;}//{printf("\nNOT EMAIL %s\n",yytext);}
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
