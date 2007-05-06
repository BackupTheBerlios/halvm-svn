.PHONY: install install_halvm install_halvm-osd install_policies

install_halvm:
	install -D -m 0755 -o root -g root src/halvm ${DESTDIR}/usr/sbin
	install -D -m 0644 -o root -g root man/halvm.8 ${DESTDIR}/usr/man/man8

install_halvm-osd:
	install -D -m 0755 -o root -g root src/halvm-osd ${DESTDIR}/usr/bin
	install -D -m 0644 -o root -g root man/halvm-osd.1 ${DESTDIR}/usr/man/man1

install_policies:
	install -D -m 0644 -o root -g root policy/cdrom.fdi policy/removable.fdi ${DESTDIR}/etc/hal/fdi/policy/

install: install_halvm install_halvm-osd install_policies
