.PHONY: all install clean

all: clean README.md

clean:
	rm -f README.md

README.md: README.sh paruz VERSION
	./README.sh

install:
	install -m755 paruz /usr/local/bin/
