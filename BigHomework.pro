QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    activetrap.cpp \
    arrowtrap.cpp \
    baseobject.cpp \
    buff.cpp \
    collisioninspector.cpp \
    destructiblebrick.cpp \
    firstmonster.cpp \
    floorgrass.cpp \
    flowerbuff.cpp \
    flyingbrick.cpp \
    flyingprop.cpp \
    goal.cpp \
    gold.cpp \
    ground.cpp \
    main.cpp \
    mainwindow.cpp \
    monster.cpp \
    movething.cpp \
    mushroombuff.cpp \
    passivetrap.cpp \
    player.cpp \
    rock.cpp \
    role.cpp \
    scene.cpp \
    secondmonster.cpp \
    spring.cpp \
    terrain.cpp \
    thirdmonster.cpp \
    trap.cpp \
    updater.cpp \
    values.cpp

HEADERS += \
    activetrap.h \
    arrowtrap.h \
    baseobject.h \
    buff.h \
    classname.h \
    collisioninspector.h \
    destructiblebrick.h \
    firstmonster.h \
    floorgrass.h \
    flowerbuff.h \
    flyingbrick.h \
    flyingprop.h \
    goal.h \
    gold.h \
    ground.h \
    mainwindow.h \
    monster.h \
    movething.h \
    mushroombuff.h \
    passivetrap.h \
    player.h \
    rock.h \
    role.h \
    scene.h \
    sceneinfo.h \
    scenewidgets.h \
    secondmonster.h \
    spring.h \
    terrain.h \
    thirdmonster.h \
    trap.h \
    updater.h \
    values.h

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    BigHomework_zh_CN.ts

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resource.qrc