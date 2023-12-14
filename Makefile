# Makefile for Snake Game

# Compiler and flags
CC = g++
CFLAGS = -std=c++11

# Source files
SRCS = main.cpp snake.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Executable name
EXEC = SnakeGame

# Default target
all: $(EXEC)

# Linking the object files into the executable
$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)

# Compiling source files into object files
%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up intermediate object files and the executable
clean:
	rm -f $(OBJS) $(EXEC)
