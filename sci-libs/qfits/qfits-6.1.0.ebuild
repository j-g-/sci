# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="ESO stand-alone C library offering easy access to FITS files."
HOMEPAGE="http://www.eso.org/projects/aot/qfits/"
SRC_URI="ftp://ftp.hq.eso.org/pub/${PN}/${P}.tar.gz"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"
DEPEND="virtual/libc"

src_install() {
	make DESTDIR=${D} install || die "make install failed"
	dodoc README AUTHORS
	use doc && dohtml html
}
