# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

DESCRIPTION="FiSH encryption for irssi"
HOMEPAGE="https://github.com/falsovsky/FiSH-irssi/"
EGIT_REPO_URI="https://github.com/falsovsky/FiSH-irssi.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-libs/openssl dev-libs/glib net-irc/irssi"

RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	eapply_user
	sed -i -e 's#share/doc/FiSH-irssi#share/doc/'"$P"'#' CMakeLists.txt || die "Sed failed!"
	cmake-utils_src_prepare
}
