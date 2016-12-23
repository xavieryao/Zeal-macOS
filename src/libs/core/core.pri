ZEAL_LIB_NAME = Core

QT += network

unix:!macx {
    CONFIG += link_pkgconfig
    PKGCONFIG += libarchive
}
win32: {
    LIBS += -larchive_static -lz
}
macx: {
    INCLUDEPATH += /usr/local/Cellar/libarchive/3.2.2/include
    LIBS += -L/usr/local/Cellar/libarchive/3.2.2/lib -larchive
}
