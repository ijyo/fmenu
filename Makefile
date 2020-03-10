PREFIX := $(HOME)/.local
SRC    := $(addprefix bin/, fmenu fmenu_run fmenu-read)
DEST   := $(addprefix $(DESTDIR)$(PREFIX)/bin/, $(notdir $(SRC)))

all:

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f $(SRC) $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DEST)

uninstall:
	rm -f $(DEST)

.PHONY: all install uninstall
