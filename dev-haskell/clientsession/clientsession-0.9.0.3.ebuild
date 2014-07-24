# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Securely store session data in a client-side cookie"
HOMEPAGE="http://github.com/yesodweb/clientsession/tree/master"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-haskell/base64-bytestring-0.1.1.1:=[profile?]
	>=dev-haskell/cereal-0.3:=[profile?]
	>=dev-haskell/cipher-aes-0.1.7:=[profile?]
	>=dev-haskell/cprng-aes-0.2:=[profile?]
	>=dev-haskell/crypto-api-0.8:=[profile?]
	dev-haskell/crypto-random:=[profile?]
	>=dev-haskell/entropy-0.2.1:=[profile?]
	>=dev-haskell/skein-1.0:=[profile?] <dev-haskell/skein-1.1:=[profile?]
	>=dev-haskell/tagged-0.1:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hspec-1.3
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2
		dev-haskell/transformers )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test test)
}
