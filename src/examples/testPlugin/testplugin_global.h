﻿#ifndef TESTPLUGIN_GLOBAL_H
#define TESTPLUGIN_GLOBAL_H

#include <QtCore/qglobal.h>

#ifdef TESTPLUGIN_LIB
# define TESTPLUGIN_EXPORT Q_DECL_EXPORT
#else
# define TESTPLUGIN_EXPORT Q_DECL_IMPORT
#endif

#endif // TESTPLUGIN_GLOBAL_H
