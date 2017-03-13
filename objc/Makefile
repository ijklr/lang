CC=gcc
LIBRARIES:= -lobjc
HEADERS:= -I/path/to/libobjc/headers

CFLAGS=-Wall -I. -Werror -g -v $(HEADERS) `gnustep-config --objc-flags` `gnustep-config --base-libs`
LDFLAGS=$(LIBRARIES)
OUT=-o main

all: hello http 

hello: 
	$(CC) $(CFLAGS) HelloWorld.m main.m $(LDFLAGS) -o hello
http:
	$(CC) $(CFLAGS) Easyhttp.m $(LDFLAGS) -o http

