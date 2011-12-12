# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit transmission-2.41

DESCRIPTION="A Fast, Easy and Free BitTorrent client - command line (CLI) version"
KEYWORDS="~amd64 ~x86"
IUSE="nls utp"

RDEPEND=""
DEPEND="${RDEPEND}
	nls? ( sys-devel/gettext
		>=dev-util/intltool-0.40 )"

src_install() {
	dobin cli/transmission-cli
	doman cli/transmission-cli.1
}
