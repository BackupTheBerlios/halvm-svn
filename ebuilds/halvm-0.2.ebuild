# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="HAL Volume Manager"
HOMEPAGE="https://developer.berlios.de/projects/halvm/"
SRC_URI="http://download.berlios.de/${PN}/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE="osd policies"
RESTRICT="nomirror"
RDEPEND=">=dev-lang/python-2.4
         >=dev-python/dbus-python-0.71
		 >=sys-apps/hal-0.5.7
		 osd? (>=dev-python/pyosd-0.2.14)"

src_compile() {
	:
}

src_install() {
	emake install_halvm DESTDIR=${D}
	if use osd; then
		emake install_halvm-osd DESTDIR=${D}
	fi
	if use policies; then
		emake install_policies DESTDIR=${D}
	fi
	doinitd rc/halvm
}
