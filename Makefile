PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Pash.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p pash $(DESTDIR)$(PREFIX)/bin/pash
	@cp -p pash.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/pash

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/pash
	@rm -rf $(DESTDIR)$(MANDIR)/man1/pash.1*
