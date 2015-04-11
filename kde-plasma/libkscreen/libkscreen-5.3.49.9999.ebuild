# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

VIRTUALX_REQUIRED="test"
inherit kde5

DESCRIPTION="KDE screen management library"
KEYWORDS=""
IUSE=""

# does not build
RESTRICT="test"

DEPEND="
	dev-qt/qtdbus:5
	dev-qt/qtgui:5
	dev-qt/qtx11extras:5
	x11-libs/libxcb
	x11-libs/libXrandr
"
RDEPEND="${DEPEND}
	!x11-libs/libkscreen:5
"
