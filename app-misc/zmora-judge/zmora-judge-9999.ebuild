# Copyright 2017 Zmora-AGH
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit user

DESCRIPTION="Zmora-judge is judge program for zmora."
HOMEPAGE="https://github.com/zmora-agh/zmora-judge"
if ! [[ ${PV} = *9999* ]]; then
	SRC_URI="http://bindist.zmora-agh.memleak.pl/judge/zmora-judge-${PV}.tar.gz"
fi

S="${WORKDIR}/zmora-judge"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="app-misc/nsjail"

pkg_setup(){
	enewgroup zmora
	enewuser zmora -1 -1 -1 zmora
}

src_install() {
	dobin zmora-judge/zmora-judge
	doinitd ${FILESDIR}/zmora-judge
}
