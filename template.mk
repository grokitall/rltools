all: template

template: template.o template.mk
	$(CC) -o template template.o $(cflags)
	./template

template.o: template.c template.mk
	$(CC) -c template.c $(cflags)
