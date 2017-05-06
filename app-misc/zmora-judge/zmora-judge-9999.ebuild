# Copyright 2017 Zmora-AGH
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

#inherit git-r3 toolchain-funcs

DESCRIPTION="Zmora-judge is judge program for zmora."
HOMEPAGE="https://github.com/zmora-agh/zmora-judge"
SRC_URI="http://bindist.zmora-agh.memleak.pl/judge/zmora-judge-${PV}.tar.gz"
S="${WORKDIR}/zmora-judge"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dobin zmora-judge/zmora-judge
}
