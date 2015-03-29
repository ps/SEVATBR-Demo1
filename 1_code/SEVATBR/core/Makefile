CC = g++
CFLAGS = -pedantic -Wall -O3 `pkg-config --cflags opencv`
INCLUDE = -I$(shell pwd) -I$(shell pwd)/../manual -I$(shell pwd)/../robot
LIBS = $(shell pwd)/../manual/libmanual.a \
	$(shell pwd)/../robot/librobot.a \
	`pkg-config --libs opencv`
SUBDIRS = $(shell pwd)/../manual $(shell pwd)/../robot
OBJECTS = core.o test_ctrl_stdout.o test_srvr_stdout.o
TARGETS = core test_ctrl_stdout test_srvr_stdout

all: subdirs $(OBJECTS) $(TARGETS)

subdirs:
	$(foreach directory, $(SUBDIRS), make -C $(directory);)

core.o: core.cpp
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ -c $<

core: core.o
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ $^ $(LIBS)

test_ctrl_stdout.o: test_ctrl_stdout.cpp
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ -c $<

test_srvr_stdout.o: test_srvr_stdout.cpp
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ -c $<

test_ctrl_stdout: test_ctrl_stdout.o
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ $^ $(LIBS)

test_srvr_stdout: test_srvr_stdout.o
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ $^ $(LIBS)

clean:
	rm -f $(OBJECTS) $(TARGETS)
	$(foreach directory, $(SUBDIRS), make clean -C $(directory);)
