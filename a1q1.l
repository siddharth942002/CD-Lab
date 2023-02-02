%{
    # include <stdio.h>
%}

%%
^1\.?((1|0)+\.)*101+ { printf("Correct!"); }
.+ { printf("Incorrect!"); }
%%
int yywrap(void) {
    return 1;
}
int main(void) {
    yylex();
    return 0;
}
