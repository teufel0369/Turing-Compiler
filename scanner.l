%{
#inlcude <stdio.h>
#include "flex.h"
void yyerror(char *s);
int lineCounter = 1;
%}

L          [A-Za-z]
D          [0-9]
%%
[\t]+ ;
[\n ] {++lineCounter;}
var {return Var;}
int {return Int;}
real {return Real;}
boolean {return Boolean;}
record {return Record;}
end {return End;}
bind {return Bind;}
to {return To;}
assert {return Assert;}
begin {return Begin;}
loop {return Loop;}
exit {return Exit;}
when {return When;}
if {return If;}
then {return Then;}
elsif {return Elsif;}
else {return Else;}
put {return Put;}
or {return Or;}
and {return And;}
not {return Not;}
"not=" {return Ne;}
div {return Div;}
mod {return Mod;}
";" {return SemiColon;}
":" {return Colon;}
":=" {return Assign;}
"<" {return LessThan;}
">" {return GreaterThan;}
"<=" {return LessThanEq;}
"=" {return Eq;}
"+" {return Add;}
"-" {return Subtract;}
"*" {return Multiply;}
"/" {return Divide;}
"(" {return LeftParen;}
")" {return RightParen;}
"." {return Dot;}
"," {return Comma;}

{L}({L}|{D}|"_")* {return Indent;}
{D}+"."{D}+(e0?{D}+)? {return RealConst;}
{D}+ {return IntConst;}
. {yyerror("Bad Char");}
%%

int yywrap(void) {return 1;}
void yyerror(char *s){
    printf("Error: %s at token %s in line %d\n", s, yytext, lineCounter);
}
