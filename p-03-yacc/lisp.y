%{
    #include <stdio.h>
    int yylex(void);
    void yyerror (const char *s);
%}
%union{
    int ival;
    double dval;
}
%token <ival> NUMBER
%token <dval> REAL
%type <dval> expr
%%

 //prog:  '(' expr ')'   {printf("CORRECTO: %lf\n",$2);}
prog:  '(' expr ')'   {printf("CORRECTO\n");}

expr:   '(' expr ')'    {$$ = $2;}
    |   '+' expr expr   {$$ = $2+$3;}
    |   '/' expr expr   {$$ = $2/$3;}
    |   '*' expr expr   {$$ = $2*$3;}
    |   '-' expr expr   {$$ = $2-$3;}
    |   '-' NUMBER      {$$ = -1*$2;}
    |   NUMBER          {$$ = (typeof(yylval.dval))$1;}
    |   REAL
%%

int main() {
    yyparse();
    return 0;
}

void yyerror (const char *s) { 
    printf("INCORRECTO\n");
}