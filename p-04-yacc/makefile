mycalc: mycalc.l mycalc.y
	bison -y -d -t -v mycalc.y
	flex mycalc.l
	clang-3.9 lex.yy.c y.tab.c -o mycalc
