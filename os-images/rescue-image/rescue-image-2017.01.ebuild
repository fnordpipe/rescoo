# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="meta package for rescue system rootfs"
HOMEPAGE="https://www.fnordpipe.org"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
  sys-boot/syslinux
  sys-fs/mdadm
  sys-kernel/linux-stable
  "
