﻿
TEMPLATE = lib
QT += core widgets gui
TARGET = QtPropertyBrowser
DEFINES += QT_QTPROPERTYBROWSER_EXPORT
DESTDIR = $$PWD/../../output/lib
INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD

CONFIG(debug,debug|release){
    unix:TARGET=$$join(TARGET,,,_debug)
    else:TARGET=$$join(TARGET,,,d)
}


SOURCES += $$PWD/qtpropertybrowser.cpp \
        $$PWD/qtpropertymanager.cpp \
        $$PWD/qteditorfactory.cpp \
        $$PWD/qtvariantproperty.cpp \
        $$PWD/qttreepropertybrowser.cpp \
        $$PWD/qtbuttonpropertybrowser.cpp \
        $$PWD/qtgroupboxpropertybrowser.cpp \
        $$PWD/qtpropertybrowserutils.cpp
HEADERS += $$PWD/qtpropertybrowser.h \
        $$PWD/qtpropertymanager.h \
        $$PWD/qteditorfactory.h \
        $$PWD/qtvariantproperty.h \
        $$PWD/qttreepropertybrowser.h \
        $$PWD/qtbuttonpropertybrowser.h \
        $$PWD/qtgroupboxpropertybrowser.h \
        $$PWD/qtpropertybrowserutils_p.h
RESOURCES += $$PWD/qtpropertybrowser.qrc
