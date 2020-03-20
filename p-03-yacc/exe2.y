%{
    #include <stdio.h>
    int yylex(void);
    void yyerror (const char *s);
%}

%token NUMBER
%left '+' '-'
%left '*' '/'
%right '='

%%

calc: expression                        {printf("CORRETO\n");}

expression: '(' expression ')'      {$$=$2;}
    |   '+' expression expression   {$$=$2+$3;}
    |   '-' expression expression   {$$=$2-$3;}
    |   '*' expression expression   {$$=$2*$3;}
    |   '/' expression expression   {$$=$2/$3;}
    |   NUMBER                      {$$=$1;}
    ;
%%

int main() {
    if (yyparse() != 0)
        printf("INCORRECTO\n");
    return 0;
}

