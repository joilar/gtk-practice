# File: Makefile
# Author: John Oilar
# Date: 08/05/2013
# Description: Builds GTK+ samples and test programs.

PROGS = gtk-demo-01
COMPILER = gcc
CFLAGS = `pkg-config --cflags gtk+-3.0`
LIBS = `pkg-config --libs gtk+-3.0`

all: $(PROGS)

gtk-demo-01: gtk-demo-01.c
	$(COMPILER) $(CFLAGS) -o gtk-demo-01 gtk-demo-01.c $(LIBS)

.PHONY: clean
clean:
	rm -f $(PROGS) *.o
