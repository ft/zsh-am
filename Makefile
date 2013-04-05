PREFIX = /usr/local

all:
	@echo "Use either 'make install' or 'make uninstall'"
	@echo "Set the PREFIX parameter appropriately."
	@echo "It defaults to: /usr/local"

install:
	install -m 0755 -d "$(PREFIX)/bin"
	install -m 0755 genchangelog "$(PREFIX)/bin"
	install -m 0755 zsh-am-and-changelog "$(PREFIX)/bin"
	install -m 0755 zsh-am-xseq2subject "$(PREFIX)/bin"
	install -m 0755 zsh-am "$(PREFIX)/bin"

uninstall:
	rm "$(PREFIX)/bin/genchangelog"
	rm "$(PREFIX)/bin/zsh-am-and-changelog"
	rm "$(PREFIX)/bin/zsh-am-xseq2subject"
	rm "$(PREFIX)/bin/zsh-am"

.PHONY: all install uninstall
