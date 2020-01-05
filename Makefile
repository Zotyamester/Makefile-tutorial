.PHONY = all clean

CC = gcc

LINKER = -lm

SRCS := main.c
BINS := $(SRCS:%.c=%)

all: ${BINS}

%: %.o
	${CC} ${LINKERFLAG} $< -o $@

%.o: %.c
	${CC} -c $<

clean:
	rm -rvf *.o ${BINS}
