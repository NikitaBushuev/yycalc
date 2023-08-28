CFLAGS := -Wall -g

LFLAGS := -f
YFLAGS := -d

OBJS := src/calc.o src/calc.tab.o src/calc.lex.o

.SUFFIXES:

.PHONY: all clean

all: yycalc

yycalc: $(OBJS)
	$(CC) -o $@ $(CFLAGS) $^

%.tab.c: %.y
	$(YACC) -o $@ $(YFLAGS) $^

%.lex.c: %.l
	$(LEX) -o $@ $(LFLAGS) $^

%.o: %.c
	$(CC) -o $@ $(CFLAGS) -c $^
