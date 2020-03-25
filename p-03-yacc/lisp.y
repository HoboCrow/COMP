%{
    #include <stdio.h>
    int yylex(void);
    void yyerror (const char *s);
%}
%token NUMBER
%%

prog:  '(' expr ')'   {printf("CORRECTO\n");}

expr:   '(' expr ')'    {$$ = $2;}
    |   '+' expr expr   {$$ = $2+$3;}
    |   '/' expr expr   {$$ = $2/$3;}
    |   '*' expr expr   {$$ = $2*$3;}
    |   '-' expr expr   {$$ = $2-$3;}
    |   '-' NUMBER      {$$ = -1*$2;}
    |   NUMBER
%%

int main() {
    yyparse();
    return 0;
}

void yyerror (const char *s) { 
    printf("INCORRECTO\n");
}