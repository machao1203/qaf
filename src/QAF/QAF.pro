# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = app
TARGET = QAF
win32:DESTDIR = $$PWD/../../output/bin/win32
unix:DESTDIR = $$PWD/../../output/bin/unix
QT += core widgets gui
CONFIG += debug_and_release console
DEFINES += QT_DLL QT_WIDGETS_LIB
INCLUDEPATH += $$PWD \
    $$PWD/../QAFCore \
    $$PWD/../QtAwesome \
    $$PWD/../Utils \
    $$PWD/../../include

LIBS += -L"$$PWD/../../output/lib"
PRECOMPILED_HEADER = stdafx.h
DEPENDPATH += $$PWD
win32:RC_FILE = QAF.rc

CONFIG(debug,debug|release){
    unix:TARGET=$$join(TARGET,,,_debug)
    else:TARGET=$$join(TARGET,,,d)

    win32{
        LIBS += -lQAFCored \
            -lQtAwesomed
    }

    unix{
        LIBS += -lQAFCore_debug \
            -lQtAwesome_debug \
            -lQtCommonModel_debug
    }
}

CONFIG(release,release|debug){
    LIBS += -lQAFCore \
        -lQtAwesome \
        -lQtCommonModel
}
include(QAF.pri)
