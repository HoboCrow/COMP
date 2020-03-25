%{
    #include <stdio.h>
    int yylex(void);
    void yyerror (const char *s);
%}

%token NUMBER
%left '-' '+'
%left '*' '/'
%right '='

%%

calc: expression                        {printf("%d\n", $1);}

expression: expression '+' expression   {$$=$1+$3;}
    |   expression '-' expression       {$$=$1-$3;}
    |   expression '*' expression       {$$=$1*$3;}
    |   expression '/' expression       {if ($3 == 0) { yyerror("Divide by zero!"); return 0;} $$=$1/$3;}
    |   '-' expression                  {$$ = $2*-1;}
    |   '(' expression ')'              {$$ = $2;}
    |   NUMBER                          {$$=$1;}
    ;
%%

int main() {
    yyparse();
    return 0;
}

void yyerror (const char *s) { 
    printf ("%s\n", s);
}