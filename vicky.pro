#
#       This file is part of Vicky project
#	name of file: vicky.pro
#
#	Copyright (C) 2014 2015 Filipe Marques <eagle.software3@gmail.com>
#
#	This program is free software; you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation; either version 3 of the License, or
#	any later version.
#
#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
#	You received a copy of the GNU General Public License
#	along with this program in License folder; if not, write to the Free Software
#	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#	MA 02110-1301, USA.
#

QT       += core gui widgets

TARGET = Vicky
TEMPLATE = app
CONFIG += c++11
CONFIG += release

VERSION += 1.5.1

HEADERS +=  inc/vicky.h \
            inc/vicky_dialog.h

SOURCES +=  src/main.cpp \
            src/vicky.cpp \
            src/vicky_dialog.cpp

RESOURCES += resource/vv.qrc

FORMS +=    ui/vicky.ui \
            ui/vicky_dialog.ui

# Installation Linux
unix {
    target.path = /usr/bin/vicky

    desk.path = /usr/share/applications/vicky.desktop
    desk.files = vicky.desktop

    icon24.path = /usr/share/icons/vicky.png
    icon24.files = resource/icons/vicky24.png

    icon24_2.path = /usr/share/icons/hicolor/24x24/apps/vicky.png
    icon24_2.files = resource/icons/vicky24.png

    icon128.path = /usr/share/icons/hicolor/128x128/apps/vicky.png
    icon128.files = resource/icons/vicky128.png

    INSTALLS += target desk icon24 icon24_2 icon128
}