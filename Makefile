LIBDIR  = asm/
OBJDIR  = obj/
LIBSRCS = $(wildcard $(LIBDIR)*.asm)
LIBOBJS = $(LIBSRCS:$(LIBDIR)%.asm=$(OBJDIR)%.o)
LIBFLAGS= -O3 -i$(LIBDIR) -f elf64 -g -F dwarf
LIBOUT  = lib.lib
SRCS  = $(wildcard *.c)
OBJS  = $(SRCS:%.c=$(OBJDIR)%.o)
CFLAGS = -m64 -Wall -O3 -g
LFLAGS = -m64 -Wl,--discard-locals
LIBS  = $(LIBOUT)
OUT   = test

#ld: -nostdlib, -strip all symbols, -console subssytem
all: makelib $(OBJS)
	gcc $(LFLAGS) -o $(OUT) $(OBJS) $(LIBS) -lm
$(OBJDIR)%.o: %.c
	gcc $(CFLAGS) -c $*.c -o $(OBJDIR)$*.o -lm
	
# create the static library with >ar rcs out.lib in.o in.o
# rebuild asm objs if sources or macro include changes
makelib: $(OBJDIR) $(LIBOBJS)
	ar rcs $(LIBOUT) $(LIBOBJS)
$(OBJDIR):
	mkdir $(OBJDIR)
$(OBJDIR)%.o: $(LIBDIR)%.asm $(LIBDIR)
	nasm $(LIBFLAGS) $(LIBDIR)$*.asm -o $(OBJDIR)$*.o
	
clean:
	rm -r $(OBJDIR) $(LIBOUT) $(OUT)
