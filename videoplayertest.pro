#
# Project videoplayertest, videoplayertest
#

TARGET = videoplayertest

CONFIG += sailfishapp

DEFINES += "APPVERSION=\\\"$${SPECVERSION}\\\""

message($${DEFINES})

SOURCES += src/videoplayertest.cpp \
	src/testi.cpp
	
HEADERS += src/testi.h

OTHER_FILES += qml/videoplayertest.qml \
    qml/cover/CoverPage.qml \
    qml/pages/Videoplayertest.qml \
    qml/pages/AboutPage.qml \
    rpm/videoplayertest.spec \
	videoplayertest.png \
    videoplayertest.desktop

