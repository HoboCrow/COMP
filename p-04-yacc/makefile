mycalc: mycalc.l mycalc.y
	bison -y -d -t -v mycalc.y
	yacc --graph mycalc.y
	dot -Tpng y.dot -o automaton.png
	flex mycalc.l
	clang-3.9 lex.yy.c y.tab.c -o mycalc

clean:
	rm mycalc