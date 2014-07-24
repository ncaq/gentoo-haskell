# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A simple library for creating animated ascii art on ANSI terminals"
HOMEPAGE="http://hackage.haskell.org/package/haha"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.12.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
"
