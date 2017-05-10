CC = $(shell which gcc)
SOURCES = $(wildcard src/*)
OBJECTS = $(SOURCES:%.c=%.o)

%.o: %.c
	$(CC) -c -g $< -o $@

program: $(OBJECTS)
	$(CC) -g -o $@ $^ -lglfw #-Lhome/jaon/Projects/v8/out/x86.release -l v8

clean:
	rm -rf $(OBJECTS) program

.PHONY:program
