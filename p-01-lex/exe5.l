%{
    #include <string.h>
    char outbuff[13];
    int offset;
    int to_milis(char * st){
        int milis = 0;
        char buff[13];
        strcpy(buff,yytext);
        char *token = strtok(buff,":"); // add hours
        milis += 60*60*1000*atoi(token);
        token = strtok(NULL,":");         // add minutes
        milis += 60*1000*atoi(token);
        token = strtok(NULL,",");         // seconds
        milis += 1000*atoi(token);
        return milis+atoi(strtok(NULL,"\n\t ")); //milis
    }
    void print_added(int milis){
        milis += offset*1000;
        snprintf(outbuff,13,"%02d:%02d:%02d,%03d",
                                    milis/(60*60*1000),
                                   (milis/(60*1000)%60),
                                   (milis/(1000)%60),
                                   (milis%1000));
        printf("%s",outbuff);
    }
%}


%%
[0-9]{2}:[0-9]{2}:[0-9]{2},[0-9]{3}     {
                                            int milis = to_milis(yytext);
                                            //printf("TIME: %s, %d ",yytext,milis);
                                            print_added(milis);
                                        }
%%

int main(int argc, const char** argv)
{
    if (argc < 2){
        printf("No offset set!\nUsage : program [offset]\n");
        return -1;
    }
    offset = atoi(argv[1]);    
    yylex();
    printf("\n");
    return 0;
}

int yywrap()
{
return 1;
}