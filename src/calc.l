%option noyywrap nounistd

%{
#include "calc.tab.h"
%}

%%

[ \t\n\r]+ ;

[0-9]*\.?[0-9]*([eE][\+\-]?[0-9]+)? {
    yylval.mNUMBER = strtod(yytext, NULL);
    return tNUMBER;
}

. {
    return *yytext;
}

%%