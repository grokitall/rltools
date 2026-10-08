all: test-template

template: template.o template.mk
	$(CC) -o template template.o $(cflags)
	./template

template.o: template.c template.mk
	$(CC) -c template.c $(cflags)

test-template: template
	./rltest ./template nothingtodo
	./rltest './template --version' version
