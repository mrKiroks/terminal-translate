PREFIX ?= /usr/local
BINDIR  = $(PREFIX)/bin

install:
	install -Dm755 translate $(DESTDIR)$(BINDIR)/translate

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/translate

.PHONY: install uninstall
