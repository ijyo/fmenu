PREFIX := /usr/local
SRC    := $(addprefix bin/, fmenu fmenu_run readp)
DEST   := $(addprefix $(DESTDIR)$(PREFIX)/bin/, $(notdir $(SRC)))

all:

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f $(SRC) $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DEST)

uninstall:
	rm -f $(DEST)

.PHONY: all install uninstall
