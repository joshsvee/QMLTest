TEMPLATE = app
TARGET = QMLTest
DESTDIR = bin/
CONFIG += qt
QT += widgets qml quick

HEADERS +=      source/ColorRandomizer.h

SOURCES +=	source/Main.cpp \
                source/ColorRandomizer.cpp

RESOURCES =	qml.qrc

OBJECTS_DIR = tmp
MOC_DIR = tmp
UI_DIR = tmp
RCC_DIR = tmp
