build:
	cd automation/fa;\
	bison -y -d fa.y;\
	lex fa.l;\
	gcc -c y.tab.c lex.yy.c;\
	gcc y.tab.o lex.yy.o -o ../../build/fa;\
	rm y.tab.o lex.yy.o lex.yy.c y.tab.c y.tab.h
