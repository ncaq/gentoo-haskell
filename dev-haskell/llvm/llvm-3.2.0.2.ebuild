# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bindings to the LLVM compiler toolkit"
HOMEPAGE="https://github.com/bos/llvm"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="developer"

RDEPEND=">=dev-haskell/llvm-base-3.2.0.2:=[profile?]
		<dev-haskell/llvm-base-4:=[profile?]
		dev-haskell/mtl:=[profile?]
		dev-haskell/type-level:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag developer developer)
}
