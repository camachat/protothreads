CFLAGS=-Iinclude -Oz -Wuninitialized -Werror

all: example-codelock example-buffer example-small

example-codelock: example-codelock.c $(wildcard include/pt/*.h)
	$(CC) $(CFLAGS) -o $@ $<

example-buffer: example-buffer.c $(wildcard include/pt/*.h)
	$(CC) $(CFLAGS) -o $@ $<

example-small: example-small.c $(wildcard include/pt/*.h)
	$(CC) $(CFLAGS) -o $@ $<

clean:
	@rm example-codelock example-buffer example-small 2> /dev/null || true
