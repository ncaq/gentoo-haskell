# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to Graphviz for graph visualisation"
HOMEPAGE="http://projects.haskell.org/graphviz/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test-parsing"

RESTRICT=test # very slow

RDEPEND=">=dev-haskell/colour-2.3:=[profile?] <dev-haskell/colour-2.4:=[profile?]
	>=dev-haskell/dlist-0.5:=[profile?] <dev-haskell/dlist-0.8:=[profile?]
	>=dev-haskell/fgl-5.4:=[profile?] <dev-haskell/fgl-5.6:=[profile?]
	>=dev-haskell/polyparse-1.9:=[profile?] <dev-haskell/polyparse-1.10:=[profile?]
	>=dev-haskell/temporary-1.1:=[profile?] <dev-haskell/temporary-1.3:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/wl-pprint-text-1.1.0.0:=[profile?] <dev-haskell/wl-pprint-text-1.2.0.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.14
	test? ( dev-haskell/fgl
		>=dev-haskell/quickcheck-2.3 <dev-haskell/quickcheck-2.8
		dev-haskell/text )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test-parsing test-parsing)
}
