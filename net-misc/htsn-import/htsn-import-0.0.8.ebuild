# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal user

DESCRIPTION="Import XML files from The Sports Network into an RDBMS"
HOMEPAGE="http://hackage.haskell.org/package/htsn-import"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	>=dev-haskell/cmdargs-0.10.6
	>=dev-haskell/configurator-0.2
	>=dev-haskell/groundhog-0.5
	>=dev-haskell/groundhog-postgresql-0.5
	>=dev-haskell/groundhog-sqlite-0.5
	>=dev-haskell/groundhog-th-0.5
	>=dev-haskell/hslogger-1.2
	>=dev-haskell/htsn-common-0.0.1
	>=dev-haskell/hxt-9.3
	>=dev-haskell/missingh-1.2
	>=dev-haskell/split-0.2
	>=dev-haskell/tasty-0.8
	>=dev-haskell/tasty-hunit-0.8
	>=dev-haskell/transformers-0.3
	>=dev-haskell/tuple-0.2
	>=dev-lang/ghc-7.6.1
	test? ( >=dev-haskell/doctest-0.9
			>=dev-util/shelltestrunner-1.3 )
"

pkg_setup() {
	haskell-cabal_pkg_setup
	# The user/group are not needed to build/install, only to restrict
	# access to the global config file. We share our user/group with
	# net-misc/htsn, since when used in conjunction, htsn-import will
	# need to read (and delete) the files created by htsn.
	enewgroup "htsn"
	enewuser "htsn" -1 -1 "/home/htsn" "htsn"
}

src_install() {
	haskell-cabal_src_install

	dodoc "${S}"/doc/README*
	dodoc -r "${S}/schema"

	doman "${S}/doc/man1/${PN}.1"

	insinto /etc
	newins "${S}/doc/${PN}rc.example" "${PN}rc"

	# There's nothing sensitive in the config file as installed, but it
	# is possible to set a username/password globally. Better to let the
	# user loosen the permissions than require him to tighten them.
	fowners "htsn:htsn" "/etc/${PN}rc"
	fperms 640 "/etc/${PN}rc"
}
