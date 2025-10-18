PREFIX  ?= /usr/local
BINDIR  := $(PREFIX)/bin
INSTALL := install

.PHONY: all install uninstall

all:
	@echo "Run 'sudo make install' to install translate"

install:
	$(INSTALL) -Dm755 translate $(DESTDIR)$(BINDIR)/translate

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/translate
