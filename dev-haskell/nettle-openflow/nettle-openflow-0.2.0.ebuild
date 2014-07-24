# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="OpenFlow protocol messages, binary formats, and servers"
HOMEPAGE="http://hackage.haskell.org/package/nettle-openflow"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/bimap:=[profile?]
		dev-haskell/binary:=[profile?]
		dev-haskell/binary-strict:=[profile?]
		dev-haskell/hlist:=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-haskell/network-2.3:=[profile?]
		>=dev-haskell/parsec-3.1:=[profile?]
		dev-haskell/syb:=[profile?]
		>=dev-lang/ghc-7.4.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

src_prepare() {
	epatch "${FILESDIR}"/${P}-instance.patch
}
