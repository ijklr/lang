CC=gcc

LIBRARIES:= -lobjc
HEADERS:= -I/path/to/libobjc/headers

SOURCE=main.m HelloWorld.m

CFLAGS=-Wall -I. -Werror -g -v $(HEADERS) $(SOURCE) `gnustep-config --objc-flags` `gnustep-config --base-libs`
LDFLAGS=$(LIBRARIES)
OUT=-o main

all:
	    $(CC) $(CFLAGS) $(LDFLAGS) $(OUT)
