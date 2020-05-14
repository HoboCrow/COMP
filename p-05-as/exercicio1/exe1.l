%{
#include "structures.h"
#include "symbol_table.h"
#include "semantics.h"
#include "y.tab.h"

table_element *symtab=NULL;
int ncol = 1;
extern is_program* myprogram;
%}

ID       [a-z][a-z0-9]*

%%
integer     {ncol+=yyleng; return INTEGER;}
double      {ncol+=yyleng; return DOUBLE;}
char        {ncol+=yyleng; return CHARACTER;}
let         {ncol+=yyleng; return LET;}
in          {ncol+=yyleng; return IN;}
end         {ncol+=yyleng; return END;}
write       {ncol+=yyleng; return WRITE;    }
{ID}        {ncol+=yyleng; yylval.id = strdup(yytext); return IDENTIFIER;}
[\n]+       {ncol=1; yylineno++;}
[ \t]+      {ncol+=yyleng;}
.           {ncol+=yyleng; return yytext[0];}
%%

int main(int argc, char **argv) {
    int errors;

    yyparse();
    errors=check_program(myprogram);
    if(errors>0)
        printf("The program has %d errors!\n", errors);
    show_table();
    yylex_destroy();
    return 0;
}



int yywrap(void){
    return 1;
}
/**************************
*****************************/
