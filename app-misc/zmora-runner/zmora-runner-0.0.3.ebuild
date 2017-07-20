# Copyright 1999-2010 Gentoo Foundation 
# Distributed under the terms of the GNU General Public License v2 
# $Header: $ 

EAPI=6
inherit cmake-utils

DESCRIPTION=""
HOMEPAGE=""
if ! [[ ${PV} = *9999* ]]; then
	SRC_URI="https://github.com/zmora-agh/zmora-runner/archive/${PV}.zip -> ${P}.zip"
fi

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
        local mycmakeargs=(
                "-DVERSION=${PV}"
        )

        cmake-utils_src_configure
}
