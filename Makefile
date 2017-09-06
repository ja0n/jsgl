CC = $(shell which gcc)
SOURCES = $(wildcard src/*)
OBJECTS = $(SOURCES:%.c=%.o)
INCLUDES = -Iinclude -I/home/jaon/Projects/v8/include

%.o: %.c
	$(CC) -c -g $(INCLUDES) $< -o $@

program: $(OBJECTS)
	$(CC) -g -o $@ $^ -lglfw -lGL -L/home/jaon/Projects/v8/out/x64.release -l v8

clean:
	rm -rf $(OBJECTS) program

.PHONY:program
