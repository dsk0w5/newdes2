CC      = gcc
CFLAGS  = -x c -std=gnu89 -Wall -Wno-implicit-function-declaration

TARGET  = newdes2
SRCS    = ND2MAIN.C NEWDES2.C UUCODE.C

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $@ $(SRCS)

clean:
	rm -f $(TARGET)
