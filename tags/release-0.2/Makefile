.PHONY: install install_halvm install_halvm-osd install_policies

install_halvm:
	install -d ${DESTDIR}/usr/sbin/
	install -d ${DESTDIR}/usr/man/man8/
	install -m 0755 -o root -g root src/halvm ${DESTDIR}/usr/sbin/
	install -m 0644 -o root -g root man/halvm.8 ${DESTDIR}/usr/man/man8/

install_halvm-osd:
	install -d ${DESTDIR}/usr/bin/
	install -d ${DESTDIR}/usr/man/man1/
	install -D -m 0755 -o root -g root src/halvm-osd ${DESTDIR}/usr/bin/
	install -D -m 0644 -o root -g root man/halvm-osd.1 ${DESTDIR}/usr/man/man1/

install_policies:
	install -d ${DESTDIR}/etc/hal/fdi/policy/
	install -m 0644 -o root -g root policy/removable.fdi policy/cdrom.fdi ${DESTDIR}/etc/hal/fdi/policy/

install: install_halvm install_halvm-osd install_policies
