cc=gcc
CFLAGS=-Wall -framework IOKit -framework Carbon
SOURCES=idler.c
OBJECTS=$(SOURCES:.c=)
EXECUTABLE=idler
INSTALL_DIR=/usr/local/bin/

$(EXECUTABLE):
	$(CC) $(CFLAGS) $(SOURCES) -o $(EXECUTABLE)

install:
	mv $(EXECUTABLE) $(INSTALL_DIR)
	chmod +x $(INSTALL_DIR)$(EXECUTABLE)

clean:
	rm -rf idler

