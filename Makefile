INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)


# Targets

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0755 -D conky-toggle.sh $(PREFIX)/usr/bin/conky-toggle.sh
	$(INSTALL) -m0755 -D regolith-ftue.sh $(PREFIX)/usr/bin/regolith-ftue.sh
	$(INSTALL) -m0644 -D conky.config $(PREFIX)/etc/xdg/conky/config
	
uninstall:
	rm -f $(PREFIX)/usr/bin/conky-toggle.sh $(PREFIX)/etc/xdg/conky/config $(PREFIX)/usr/bin/regolith-ftue.sh

.PHONY: all install uninstall
