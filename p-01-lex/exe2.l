numero				[0-9]+
float               [0-9]+("."|,)[0-9]+
token               (abc|ab+c|a?(bc)+)
expo                e("+"|-)[0-9]+
string              \".*\"

%%
{numero}            {printf(" integer ");}
{numero}l           {printf(" long ");}
{numero}u           {printf(" unsigned int ");}
{numero}ul          {printf(" unsigned long ");}
{float}             {printf(" float ");}
{numero}f           {printf(" float ");}
{numero}{expo}      {printf(" floating point ");}
{float}{expo}       {printf(" floating point ");}
{token}             {printf(" !token ");}
{string}            {printf(" string ");}
%%
int main()
{
yylex();
return 0;
}

int yywrap()
{
return 1;
}

