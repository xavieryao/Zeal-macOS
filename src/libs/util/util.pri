ZEAL_LIB_NAME = Util

unix:!macx {
    CONFIG += link_pkgconfig
    PKGCONFIG += sqlite3
}
win32: {
    LIBS += -lsqlite3
}
macx: {
    LIBS += -lsqlite3
}
