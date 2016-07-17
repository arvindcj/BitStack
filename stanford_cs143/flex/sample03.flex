%{%
int words = 0;
int chars = 0;
int lines = 0;
%}

%%
[a-zA-Z]+       { words++; chars += strlen(yytext); }
\n              { lines++; chars++; }
.               { chars++; }
%%

main(int argc, char **argv){
  yylex();
  printf("%8d%8d%8d\n", lines, words, chars);
}
