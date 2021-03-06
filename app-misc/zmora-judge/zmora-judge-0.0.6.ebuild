# Copyright 2017 Zmora-AGH
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

#inherit git-r3 toolchain-funcs

DESCRIPTION="NsJail is a process isolation tool for Linux."
HOMEPAGE="https://google.github.io/nsjail/"
SRC_URI="http://bindist.zmora-agh.memleak.pl/judge/${PV}/zmora-judge.tar.gz"
S="${WORKDIR}/zmora-judge"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dobin zmora-judge/zmora-judge
}
