SRCDIR  := bin
DESTDIR := $(HOME)/.local/bin
SRCS    := $(wildcard $(SRCDIR)/*)
DESTS   := $(addprefix $(DESTDIR)/, $(notdir $(SRCS)))

install:
	mkdir -p $(DESTDIR)
	cp -f $(SRCS) $(DESTDIR)
	chmod 755 $(DESTS)

uninstall:
	rm -f $(DESTS)

.PHONY: install uninstall
