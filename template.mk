all: test-template

template: template.o template.mk
	$(CC) -o template template.o $(cflags)
	./template

template.o: template.c template.mk
	$(CC) -c template.c $(cflags)

test-template: template
	./rltest nothingtodo ./template
	./rltest version ./template --version
	./rltest help ./template --help
