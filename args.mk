clean-args:
	rm -f bin/test-args
	rm -f test-args.exe
	rm -f test-args.o
	rm -f test-args.d

args.o: args.c args.h args.mk
	$(CC) -c args.c $(cflags)

test-args.o: test-args.c args.h args.mk
	$(CC) -c test-args.c $(cflags)

bin/test-args: test-args.o args.o args.mk
	$(CC) -o bin/test-args test-args.o args.o $(cflags)
	./rltest test-args ./bin/test-args

