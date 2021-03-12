PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

install:
	$(info Installing the library to $(BINDIR))
	@install -Dm755 .bin/md2html.awk  $(BINDIR)/md2html

uninstall:
	$(info Removing library from $(BINDIR))
	@rm -f $(BINDIR)/md2html

test:
	$(info Running shellspec tests)
	@rm -rf ./coverage
	@shellspec --kcov

.PHONY: install uninstall test
