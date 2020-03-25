%{
    #include "y.tab.h"
%}

%%
[0-9]+      {yylval.value = atoi(yytext); /* Guarda valor em yylval e*/
             return NUMBER;}        /* envia token reconhecido ao YACC*/
[a-zA-Z][a-zA-Z0-9_]*     {yylval.id=(char*)strdup(yytext);
                     return VAR;}  
[ \t]       ;                       /* Ignorar espaço e tab*/

.|\n           return yytext[0];       /* Caso seja qualquer outro */
                                    /* caracter (por exemplo um */
                                    /* operador), enviar para   */
                                    /* o YACC*/
%%

int yywrap() {
    return 1;
}

