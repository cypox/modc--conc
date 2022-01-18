CC = g++
CFLAGS = -std=c++2a
DEBUG = -g -O0
SRC_DIR = ./
INC_DIR = .
LIBS = -lpthread

# These files compile via implicit rules
main: ${SRC_DIR}/main.cpp
	$(CC) $(CFLAGS) $(DEBUG) $(CPPFLAGS) -I$(INC_DIR) $< -o $@ $(LIBS)

.PHONY: main clean

clean:
	rm -f main
