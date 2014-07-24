# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The main command-line interface for the hledger accounting tool"
HOMEPAGE="http://hledger.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+threaded"

RDEPEND=">=dev-haskell/cmdargs-0.10:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	>=dev-haskell/haskeline-0.6:=[profile?] <=dev-haskell/haskeline-0.8:=[profile?]
	~dev-haskell/hledger-lib-0.23.2:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/parsec:=[profile?]
	>=dev-haskell/pretty-show-1.6.4:=[profile?]
	>=dev-haskell/regexpr-0.5.1:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	>=dev-haskell/shakespeare-1.0:=[profile?] <dev-haskell/shakespeare-2.1:=[profile?]
	>=dev-haskell/shakespeare-text-1.0:=[profile?] <dev-haskell/shakespeare-text-1.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/tabular-0.2:=[profile?] <dev-haskell/tabular-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/utf8-string-0.3.5:=[profile?] <dev-haskell/utf8-string-0.4:=[profile?]
	>=dev-haskell/wizards-1.0:=[profile?] <dev-haskell/wizards-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/csv
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag threaded threaded)
}
