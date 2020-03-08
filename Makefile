SRCDIR    := bin
DESTDIR   := $(HOME)/.local/bin
FILES     := fmenu fmenu_run fmenu-term fmenu-read
SRCFILES  := $(addprefix $(SRCDIR)/,$(FILES))
DESTFILES := $(addprefix $(DESTDIR)/,$(FILES))

install:
	mkdir -p $(DESTDIR)
	cp -f $(SRCFILES) $(DESTDIR)
	chmod 755 $(DESTFILES)

uninstall:
	rm -f $(DESTFILES)

.PHONY: install uninstall
