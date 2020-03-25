%{
    #include <stdlib.h>
    #include <stdio.h>
    #include <string.h>
    #include "symtab.h"

    #define NSYMS 100

    symtab tab[NSYMS];

    symtab *symlook(char *varname);
    int yylex(void);
    void yyerror (const char *s);
%}

%union{
    int value;
    char* id;
}

%token <value> NUMBER
%token <id> VAR

%type <value> expression

%left '-' '+'
%left '*' '/'
%right '='

%%

statement:
        | statement expression '\n'     {printf("%d\n", $2);}
        | statement assignment '\n'     

assignment: VAR '=' expression              {symlook($1)->value = $3;}

expression: expression '+' expression   {$$=$1+$3;}
        |   expression '-' expression   {$$=$1-$3;}
        |   expression '*' expression   {$$=$1*$3;}
        |   expression '/' expression   {if ($3 == 0) { yyerror("Divide by zero!"); return 0;} $$=$1/$3;}
        |   '-' expression              {$$ = $2*-1;}
        |   '(' expression ')'          {$$ = $2;}
        |   NUMBER                      {$$=$1;}
        |   VAR                         {$$ = symlook($1)->value;}
        ;
%%

int main() {
    yyparse();
    return 0;
}

void yyerror (const char *s) { 
    printf ("%s\n", s);
}

symtab *symlook(char *varname)
{
    int i;
    
    for(i=0; i<NSYMS; i++)
    {
        if(tab[i].name && strcmp(varname, tab[i].name)==0)   
            return &tab[i];
        if(!tab[i].name)
        {
            tab[i].name=varname;
            return &tab[i];
        }
    }
    yyerror("variaveis a mais...");
    exit(1);
}