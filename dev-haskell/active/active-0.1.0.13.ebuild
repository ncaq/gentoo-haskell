# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Abstractions for animation"
HOMEPAGE="http://hackage.haskell.org/package/active"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/newtype-0.2:=[profile?] <dev-haskell/newtype-0.3:=[profile?]
	>=dev-haskell/semigroupoids-1.2:=[profile?] <dev-haskell/semigroupoids-4.1:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-0.14:=[profile?]
	>=dev-haskell/vector-space-0.8:=[profile?] <dev-haskell/vector-space-0.9:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/newtype-0.2 <dev-haskell/newtype-0.3
		>=dev-haskell/quickcheck-2.4.2 <dev-haskell/quickcheck-2.8
		>=dev-haskell/semigroupoids-1.2 <dev-haskell/semigroupoids-4.1
		>=dev-haskell/semigroups-0.1 <dev-haskell/semigroups-0.14
		>=dev-haskell/vector-space-0.8 <dev-haskell/vector-space-0.9 )
"

RESTRICT=test # hangs?