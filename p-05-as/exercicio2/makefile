ex1: ficha5.exemplo.y ficha5.exemplo.l functions.c semantics.c symbol_table.c structures.h
	bison -y -d -t -v ficha5.exemplo.y
	flex ficha5.exemplo.l
	clang-3.9 lex.yy.c y.tab.c functions.c semantics.c symbol_table.c -g -o exe1