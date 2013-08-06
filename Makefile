# File: Makefile
# Author: John Oilar
# Date: 08/05/2013
# Description: Builds GTK+ samples and test programs.

PROGS = gtk-example-00 gtk-example-01
COMPILER = gcc
CFLAGS = `pkg-config --cflags gtk+-3.0`
LIBS = `pkg-config --libs gtk+-3.0`

all: $(PROGS)

gtk-example-00: gtk-example-00.c
	$(COMPILER) $(CFLAGS) -o gtk-example-00 gtk-example-00.c $(LIBS)

gtk-example-01: gtk-example-01.c
	$(COMPILER) $(CFLAGS) -o gtk-example-01 gtk-example-01.c $(LIBS)

.PHONY: clean
clean:
	rm -f $(PROGS) *.o
