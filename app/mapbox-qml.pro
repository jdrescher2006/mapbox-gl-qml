TEMPLATE = app

QT += qml quick location positioning sql
CONFIG += c++14

SOURCES += src/main.cpp

RESOURCES += qml.qrc

include(../mapbox-gl-qml.pri)

INCLUDEPATH += ../../pkg-mapbox-gl-native/mapbox-gl-native/platform/qt/include ../../pkg-mapbox-gl-native/mapbox-gl-native/include
LIBS += -L../../pkg-mapbox-gl-native/build -lqmapboxgl -lz -lcurl -lcrypto
#INCLUDEPATH += ../../mapbox-gl-native/platform/qt/include ../../mapbox-gl-native/include
#LIBS += -L../../mapbox-gl-native/build/qt-linux-x86_64/Debug -lqmapboxgl -lz -lcurl

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just` for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
