# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

KDE_TEST="forceoptional"
inherit kde5

DESCRIPTION="Framework for syntax highlighting"
LICENSE="LGPL-2+ LGPL-2.1+"
KEYWORDS=""
IUSE=""

RDEPEND="
	$(add_qt_dep qtgui)
	$(add_qt_dep qtnetwork)
	$(add_qt_dep qtxmlpatterns)
"
DEPEND="${RDEPEND}
	$(add_qt_dep linguist-tools)
	dev-lang/perl
"
src_prepare() {
	kde5_src_prepare
	cmake_comment_add_subdirectory examples # nothing is installed
}

src_install() {
	kde5_src_install
	dobin "${BUILD_DIR}"/src/indexer/katehighlightingindexer
}
