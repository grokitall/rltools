all: test-template

template: template.o args.o template.mk
	$(CC) -o template template.o args.o $(cflags)
	./template

template.o: template.c args.h template.mk
	$(CC) -c template.c $(cflags)

test-template: template
	./rltest nothingtodo ./template
	./rltest version ./template --version
	./rltest help ./template --help
	./rltest undefinedarguament ./template --undefinedarguament
