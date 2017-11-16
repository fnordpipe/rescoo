# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="pub key fetcher for ssh authorized keys"
HOMEPAGE="https://www.fnordpipe.org"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
  net-misc/wget
  "

S="${WORKDIR}"

src_install() {
  dodir /etc/local.d

  exeinto /etc/local.d
  newexe ${FILESDIR}/fetchAuthorizedKeys.sh fetchAuthorizedKeys.start
}
