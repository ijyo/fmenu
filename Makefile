SRCDIR    := bin
DESTDIR   := $(HOME)/.local/bin
SRCFILES  := $(SRCDIR)/fmenu $(SRCDIR)/fmenu_run
DESTFILES := $(DESTDIR)/fmenu $(DESTDIR)/fmenu_run

install:
	mkdir -p $(DESTDIR)
	cp -f $(SRCFILES) $(DESTDIR)
	chmod 755 $(DESTFILES)

uninstall:
	rm -f $(DESTFILES)

.PHONY: install uninstall
