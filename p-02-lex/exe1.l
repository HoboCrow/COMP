%{
    #include <ctype.h>

    int offset = 'A'-'a';
    int chapter_count = 0;
    int section_count = 0;
    int itemize_count = 0;

    void strupr(char *s){
        while (*s){
            *s = toupper(*s);
            s++;
        }    
    }
%}

%X DOC BEGIN_COM ITEM ENUM TEXT
text    [a-zA-Z0-9 ]+
space   [ ]
whitespace [\n\t ]
%%

\\documentclass.*\n         {;}
\\usepackage.*\n            {;}
\\begin\{                   { BEGIN BEGIN_COM;}

<BEGIN_COM>document\}\n     { BEGIN DOC;}
<BEGIN_COM>itemize\}\n      { BEGIN ITEM;}
<BEGIN_COM>enumerate\}\n    { itemize_count = 0; BEGIN ENUM;}

<DOC>\\begin\{              { BEGIN BEGIN_COM;}

<DOC>\\title\{{text}\}      {   
                                char *s = strtok(&yytext[7],"}");
                                strupr(s);
                                printf("%s",s);
                            }
<DOC>\\chapter\{{text}\}    {
                                char *s = strtok(&yytext[9],"}");
                                printf("%d.  %s",
                                    ++chapter_count,
                                    s);
                                section_count = 0;
                                BEGIN TEXT;
                            }
<DOC>\\section\{{text}\}    {
                                char *s = strtok(&yytext[9],"}");
                                printf("%d.%d.  %s",
                                    chapter_count,
                                    ++section_count,
                                    s);
                                BEGIN TEXT;
                            }
<DOC>\\end.*\n?             {;}

<ITEM>\\item{space}.*       { printf(". %s",&yytext[6]);}
<ITEM>\\end\{itemize\}\n    { BEGIN DOC;}

<ENUM>\\item{space}.*       { printf("%d- %s",++itemize_count,&yytext[6]);}
<ENUM>\\end\{enumerate\}\n  { BEGIN DOC;}

<TEXT>[^\\:]                { ECHO;}
<TEXT>":"                   { ECHO; BEGIN DOC;} 
<TEXT>\\\\                  { BEGIN DOC;}
%%

int main(int argc, const char** argv)
{
    yylex();
    return 0;
}

int yywrap()
{
return 1;
}