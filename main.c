#include <stdio.h>
#include "flex.h"

int main() {
    int token;
    
    while((token = yylex()) != 0){
        printf("%d\t%s\n", token, yytext);
    }
    
    printf("%d\t<eof>\n", token);
    
    return 0;
}
