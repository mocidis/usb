.PHONY: all clean
APP:=usbreset
SDIR:=src
SSRCS:=usbreset.c

all: $(APP)

$(APP): $(SSRCS:.c=.o)
	gcc -o $@ $^ $(LIBS)

$(SSRCS:.c=.o): %.o: $(SDIR)/%.c
	gcc -c -o $@ $^ $(CFLAGS)

clean:
	rm -fr usbreset $(SSRCS:.c=.o)
