PREFIX ?= /usr/local

SHFILES = colors.sh strip-colors test-colors test-truecolor

install:
	for shfile in ${SHFILES}; do \
		cp -f bin/$${shfile} $(PREFIX)/bin/${shfile}; \
	done

uninstall:
	for shfile in ${SHFILES}; do \
		rm -f $(PREFIX)/bin/$${shfile}; \
	done

