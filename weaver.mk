all: weaver

weaver: weaver.o
	gcc -o weaver weaver.o

weaver.o: weaver.c
	gcc -c weaver.c
