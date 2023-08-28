%{
#include <stdio.h>

void yyerror(const char *msg);
int yylex(void);
%}

%union {
    double mNUMBER;
}

%token <mNUMBER> tNUMBER

%type <mNUMBER> expr

%left '+' '-'
%left '*' '/'

%start start

%%

start
    : expr { printf("%.16g\n", $1); }
    |
    ;

expr
    : tNUMBER       { $$ = $1; }
    | '(' expr ')'  { $$ = $2; }
    | '+' expr      { $$ = +$2; }
    | '-' expr      { $$ = -$2; }
    | expr '+' expr { $$ = $1 + $3; }
    | expr '-' expr { $$ = $1 - $3; }
    | expr '*' expr { $$ = $1 * $3; }
    | expr '/' expr { $$ = $1 / $3; }
    ;

%%

void yyerror(const char *msg) {
    fprintf(stderr, "yycalc: error: %s\n", msg);
}