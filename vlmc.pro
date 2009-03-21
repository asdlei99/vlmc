TARGET = vlmc
DESTDIR = bin
CONFIG += debug
TEMPLATE = app
OBJECTS_DIR = build
MOC_DIR = build/moc
UI_DIR = build/ui
INCLUDEPATH = build/moc \
    build/ui
QT += gui \
    network
SOURCES += src/main.cpp \
    src/gui/MainWindow.cpp \
    src/gui/LibraryWidget.cpp \
    src/gui/DockWidgetManager.cpp \
    src/LibVLCpp/VLCException.cpp \
    src/LibVLCpp/VlmManager.cpp \
    src/LibVLCpp/VLCInstance.cpp \
    src/LibVLCpp/VlmMedia.cpp \
    src/gui/Timeline.cpp \
    src/LibVLCpp/VLCMediaPlayer.cpp \
    src/LibVLCpp/VLCMedia.cpp
HEADERS += src/gui/MainWindow.h \
    src/gui/DockWidgetManager.h \
    src/gui/LibraryWidget.h \
    src/LibVLCpp/VLCpp.hpp \
    src/LibVLCpp/VLCException.h \
    src/LibVLCpp/VlmManager.h \
    src/LibVLCpp/VLCInstance.h \
    src/LibVLCpp/VlmMedia.h \
    src/gui/Timeline.h \
    src/LibVLCpp/VLCMediaPlayer.h \
    src/LibVLCpp/VLCMedia.h

FORMS += src/gui/ui/MainWindow.ui \
    src/gui/ui/Timeline.ui \
    src/gui/ui/LibraryWidget.ui

RESOURCES += 
INCLUDEPATH += src/LibVLCpp
LIBS = -L/usr/local/lib \
    -lvlc
