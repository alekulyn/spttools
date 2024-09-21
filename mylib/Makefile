
CC=gcc -O2 -Wall
CFLAGS= 
FLAGS=
LIBS= -lm -ljpeg -lpng12
LD_LIBRARY_PATH=/usr/lib/libpng12.so
INCLUDE_PATH=-I/usr/include/libpng12/

all: image.c buffer.c filesdirs.c
	$(CC) $(FLAGS) $(INCLUDE_PATH) $(LIBS) -c image.c
	$(CC) $(FLAGS) $(INCLUDE_PATH) $(LIBS) -c buffer.c
	$(CC) $(FLAGS) $(INCLUDE_PATH) $(LIBS) -c filesdirs.c

clean:
	rm -f *.o
