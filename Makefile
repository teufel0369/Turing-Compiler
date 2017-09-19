GCC = gcc
CFLAGS = -g
HEADERS = flex.h
FLEX_FILE = scanner.l
C_FILES = main.c lex.yy.c
OBJECT_FILES = main.o lex.yy.o
EXECUTABLE = runnable

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECT_FILES)
        $(GCC) $(OBJECT_FILES) -o $(EXECUTABLE)

lex.yy.c: $(FLEX_FILE) $(HEADERS)
        flex $(FLEX_FILE)

%.o: %.c $(HEADERS)
        $(GCC) -c $(CFLAGS) $*.c -o $*.o 

.PHONY: clean

clean:
        rm *.o lex.yy.c $(EXECUTABLE)