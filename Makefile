# Makefile for installing Xsnap binary

# Installation prefix (default to /usr/local)
PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

# Default target: inform the user
all:
	@echo "Binary is already built."
	@echo "Run 'sudo make install' to install Xsnap to $(BINDIR)"

# Install target: creates directory if needed, installs binary with executable permissions
install:
	@echo "Installing Xsnap..."
	install -d $(BINDIR)
	install -m 755 Xsnap $(BINDIR)/Xsnap
	@echo "Installation complete: $(BINDIR)/Xsnap"

# Uninstall target: removes the binary
uninstall:
	rm -f $(BINDIR)/Xsnap
	@echo "Uninstalled Xsnap"

.PHONY: all install uninstall
