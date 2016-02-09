# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

KDE_AUTODEPS="false"
KDE_DEBUG="false"
KDE_DOXYGEN="false"
KDE_TEST="true"
KMNAME="oxygen-icons5"
inherit kde5

DESCRIPTION="Oxygen SVG icon theme"
LICENSE="LGPL-3"
KEYWORDS=""
IUSE=""

DEPEND="
	$(add_frameworks_dep extra-cmake-modules)
	test? ( $(add_qt_dep qttest) )
"
RDEPEND="!kde-frameworks/oxygen-icons:4"
