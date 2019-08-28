INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)


# Targets

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0755 -D conky-toggle.sh $(PREFIX)/usr/bin/conky-toggle
	$(INSTALL) -m0755 -D regolith-ftue.sh $(PREFIX)/usr/bin/regolith-ftue
	$(INSTALL) -m0644 -D conky.config $(PREFIX)/etc/regolith/conky/config
	
uninstall:
	rm -f $(PREFIX)/usr/bin/conky-toggle.sh \
		  $(PREFIX)/usr/bin/conky-toggle \
		  $(PREFIX)/etc/regolith/conky/config \
		  $(PREFIX)/usr/bin/regolith-ftue.sh \
		  $(PREFIX)/usr/bin/regolith-ftue

.PHONY: all install uninstall
