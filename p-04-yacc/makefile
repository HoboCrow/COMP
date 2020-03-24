exemplo: ficha4.exemplo.l ficha4.exemplo.y
	flex ficha4.exemplo.l
	bison -y -d -t -v ficha4.exemplo.y
	clang-3.9 lex.yy.c y.tab.c -o ficha4.exemplo

mycalc: mycalc.l mycalc.y
	flex mycalc.l
	bison -y -d -t -v mycalc.y
	clang-3.9 lex.yy.c y.tab.c -o mycalc