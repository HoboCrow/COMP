ex1: exe1.y exe1.l functions.c semantics.c symbol_table.c
	bison -y -d -t -v exe1.y
	flex exe1.l
	clang-3.9 lex.yy.c y.tab.c functions.c semantics.c symbol_table.c -o exe1