CC = gcc
CFLAGS = -pedantic -Wall -Werror -std=c99 -O3
INCLUDE = -I$(shell pwd)/../serial
SUBDIRS = $(shell pwd)/../serial
OBJECTS = tbr.o
LIBOBJS = libtbr.o
TEST = test.o test

all: subdirs $(OBJECTS) $(LIBOBJS)

subdirs:
	$(foreach directory, $(SUBDIRS), make -C $(directory);)

tbr.o: tbr.c
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ -c $<

libtbr.o: tbr.c
	$(CC) $(CFLAGS) $(INCLUDE) -fPIC -o $@ -c $<

test.o: test.c
	$(CC) -pedantic -std=c99 -O3 $(INCLUDE) -o $@ -c $<

test: $(OBJECTS) test.o $(shell pwd)/../serial/serial.o
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ $^

clean:
	rm -f $(OBJECTS) $(LIBOBJS) $(TEST)
	$(foreach directory, $(SUBDIRS), make clean -C $(directory);)
