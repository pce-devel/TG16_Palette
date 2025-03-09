# Makefile for Turbografx Palette Generator

# Detect OS and set commands/target accordingly.
ifeq ($(OS),Windows_NT)
    RM = del /F /Q
    TARGET = tg16color.exe
else
    RM = rm -f
    TARGET = tg16color
endif

CC = gcc
CFLAGS = -Wall -Wextra -O2
LDFLAGS = -lm

SOURCES = tg16color.c
OBJECTS = $(SOURCES:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(TARGET) $(OBJECTS) input1.png palette.pal palette.tgp

.PHONY: all clean
