
%{
#include <stdio.h>
%}


%%

[A-Z0-9a-z_.-]+[^-._][@][A-Za-z_.-]*[A-Za-z][-] ;

[A-Z0-9a-z_.-]+[^_. -][@][a-zA-Z0-9_.-]*[A-Za-z] { printf("%s\n", yytext); }


[ \t\n] ;
.     ;


%%

int main() {
  yylex();
  return 0;
}
