CC = g++
CFLAGS = -std=c++2a
DEBUG = -g -O0
SRC_DIR = ./
INC_DIR = .
LIBS = -lpthread

# These files compile via implicit rules
ex1: ${SRC_DIR}/ex1.cpp
	$(CC) $(CFLAGS) $(DEBUG) $(CPPFLAGS) -I$(INC_DIR) $< -o $@ $(LIBS)

.PHONY: ex1 clean

clean:
	rm -f ex1
