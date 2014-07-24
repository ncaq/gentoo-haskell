# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A compiler for Fay, a Haskell subset that compiles to JavaScript"
HOMEPAGE="http://fay-lang.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/aeson-0.8:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	<dev-haskell/data-default-0.6:=[profile?]
	<dev-haskell/ghc-paths-0.2:=[profile?]
	>=dev-haskell/groom-0.1:=[profile?] <dev-haskell/groom-0.2:=[profile?]
	>=dev-haskell/haskell-names-0.3.1:=[profile?] <dev-haskell/haskell-names-0.5:=[profile?]
	>=dev-haskell/haskell-src-exts-1.15.0.1:=[profile?] <dev-haskell/haskell-src-exts-1.16:=[profile?]
	>=dev-haskell/language-ecmascript-0.15:=[profile?] <dev-haskell/language-ecmascript-0.17:=[profile?]
	<dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.6:=[profile?] <dev-haskell/optparse-applicative-0.10:=[profile?]
	<dev-haskell/safe-0.4:=[profile?]
	<dev-haskell/sourcemap-0.2:=[profile?]
	<dev-haskell/split-0.3:=[profile?]
	<dev-haskell/spoon-0.4:=[profile?]
	<dev-haskell/syb-0.5:=[profile?]
	>=dev-haskell/tasty-0.8:=[profile?] <dev-haskell/tasty-0.9:=[profile?]
	>=dev-haskell/tasty-hunit-0.8:=[profile?] <dev-haskell/tasty-hunit-0.9:=[profile?]
	>=dev-haskell/tasty-th-0.1:=[profile?] <dev-haskell/tasty-th-0.2:=[profile?]
	<dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/uniplate-1.6.11:=[profile?] <dev-haskell/uniplate-1.7:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	<dev-haskell/utf8-string-0.4:=[profile?]
	<dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>dev-haskell/haskell-packages-0.2.3.2:=[profile?] <dev-haskell/haskell-packages-0.3:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
