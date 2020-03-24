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

calc: expression                        {printf("%d\n", $1);}

expression: expression '+' expression   {$$=$1+$3;}
    |   expression '-' expression       {$$=$1-$3;}
    |   expression '*' expression       {$$=$1*$3;}
    |   expression '/' expression       {if ($3 == 0) yyerror("Divide by zero!\n"); $$=$1/$3;}
    |   '-' expression                  {$$ *= -1;}
    |   '(' expression ')'              {$$ = $2;}
    |   NUMBER                          {$$=$1;}
    ;
%%

int main() {
    yyparse();
    return 0;
}

