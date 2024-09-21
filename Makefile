
# Copyright 2006 Juhana Sadeharju

CC=gcc -O2 -Wall
CFLAGS= 
FLAGS=
LIBS= -lm -ljpeg -lpng12
LD_LIBRARY_PATH=/usr/lib/libpng12.so
INCLUDE_PATH=-I/usr/include/libpng12/

OBJS_SP= mylib/image.o mylib/buffer.o mylib/filesdirs.o sptparser.o
OBJS_SC= sptcompiler.o
OBJS_SDCM= sptdrawcompositemap.o

all:: sptparser sptcompiler

sptparser: compile_libs $(OBJS_SP)
	$(CC) $(FLAGS) $(INCLUDE_PATH) -o sptparser $(OBJS_SP) $(LIBS)

sptcompiler: $(OBJS_SC)
	$(CC) $(FLAGS) $(INCLUDE_PATH) -o sptcompiler $(OBJS_SC) $(LIBS)

sptdrawcompositemap: $(OBJS_SDCM)
	$(CC) $(FLAGS) $(INCLUDE_PATH) -o sptdrawcompositemap $(OBJS_SDCM) $(LIBS)

compile_libs:
	cd mylib && make

clean:
	rm -f *.o

mrproper:
	rm -f *.o sptparser sptcompiler sptdrawcompositemap
