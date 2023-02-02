%{
    # include <stdio.h>
%}

%%
^[A-Z][a-z0-9]*$+ { printf("Correct!"); }
.+ { printf("Incorrect!"); }
%%
int yywrap(void) {
    return 1;
}
int main(void) {
    yylex();
    return 0;
}
