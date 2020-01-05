.PHONY = all run clean

CC = gcc

LINKER = -lm

SRCS := main.c
BINS := $(SRCS:%.c=%)

all: ${BINS}

run:
	./main

%: %.o
	${CC} ${LINKERFLAG} $< -o $@

%.o: %.c
	${CC} -c $<

clean:
	rm -rvf *.o ${BINS}
