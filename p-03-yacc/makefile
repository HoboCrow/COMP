all: mycalc.l mycalc.y
	flex mycalc.l
	bison -y -d -t -v exe2.y
	clang-3.9 *.c -o mycalc