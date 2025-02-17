#-------------------------------------------------
#
# Project created by QtCreator 2014-09-08T09:16:12
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = OneVPN
TEMPLATE = app

INCLUDE_DIR = . # current dir
INCLUDEPATH += $${INCLUDE_DIR}/tools/jsoncpp/include

SOURCES += main.cpp\
    log.cpp \
    showlog.cpp \
    SingleApplication/singleinstance.cpp \
    mmainwindow.cpp \
    getmyip.cpp \
    serverapi.cpp \
    ovpnconfig.cpp \
    formhaveaccount.cpp \
    formlogin.cpp \
    formloginwaitanimation.cpp \
    formconnect.cpp \
    preferences.cpp \
    serversmodel.cpp \
    flagsresource.cpp \
    dialogsettings.cpp \
    utils.cpp \
    dnsleaks.cpp \
    killswitch.cpp \
    dialogrestoreinternet.cpp \
    sleeppreventor.cpp \
    paranoik.cpp \
    animatedbutton.cpp

win32 {
SOURCES += Windows/connection.cpp \
     Windows/openvpnconnectorqt.cpp \
     Windows/platformutils.cpp

HEADERS += Windows/connection.h \
     Windows/openvpnconnectorqt.h

RC_ICONS = OneVPN.ico
LIBS += Ws2_32.lib Advapi32.lib Iphlpapi.lib Wininet.lib
}

macx {
LIBS += -framework CoreFoundation
LIBS += -framework CoreServices
LIBS += -framework Security
LIBS += -framework SystemConfiguration
LIBS += -framework AppKit
LIBS += -framework ServiceManagement

QMAKE_OBJECTIVE_CFLAGS += -fobjc-arc

HEADERS += Mac/OpenVPNConnector.h \
               Mac/OpenVPNConnectorQt.h \
               Mac/connection.h \

 OBJECTIVE_SOURCES += Mac/OpenVPNConnector.mm \
                         Mac/OpenVPNConnectorQt.mm \
                         Mac/connection.cpp \
                         Mac/platformutils.mm


#QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.7
QMAKE_MAC_SDK = macosx10.9

ICON = Mac/OneVPN.icns
QMAKE_INFO_PLIST = Mac/Info.plist

#copydata.commands = $(COPY_DIR) $$PWD/Mac/Resources $$OUT_PWD/OneVPN.app/Contents
#copydata2.commands = $(COPY_DIR) $$PWD/Mac/Library $$OUT_PWD/OneVPN.app/Contents
#copydata3.commands = $(COPY_DIR) $$PWD/Mac/Frameworks $$OUT_PWD/OneVPN.app/Contents
#first.depends = $(first) copydata copydata2 copydata3
#export(first.depends)
#export(copydata.commands)
#export(copydata2.commands)
#export(copydata3.commands)
#QMAKE_EXTRA_TARGETS += first copydata copydata2 copydata3
}

unix:!macx {
SOURCES += Linux/connection.cpp \
     Linux/openvpnconnectorqt.cpp \
     Linux/platformutils.cpp

HEADERS += Linux/connection.h \
     Linux/openvpnconnectorqt.h
}

HEADERS  +=  \
    log.h \
    settings.h \
    showlog.h \
    utils.h \ 
    platformutils.h \
    SingleApplication/singleinstance.h \
    mmainwindow.h \
    getmyip.h \
    serverapi.h \
    ovpnconfig.h \
    formhaveaccount.h \
    formlogin.h \
    formloginwaitanimation.h \
    formconnect.h \
    preferences.h \
    serversmodel.h \
    flagsresource.h \
    dialogsettings.h \
    dnsleaks.h \
    killswitch.h \
    dialogrestoreinternet.h \
    sleeppreventor.h \
    paranoik.h \
    animatedbutton.h \
    settingskeys.h

FORMS    += \
    showlog.ui \
    mmainwindow.ui \
    formhaveaccount.ui \
    formlogin.ui \
    formloginwaitanimation.ui \
    preferences.ui \
    formconnect.ui \
    dialogsettings.ui \
    dialogrestoreinternet.ui

RESOURCES += \
    mainwindow.qrc

MOC_DIR = moc
OBJECTS_DIR = obj
UI_DIR = ui

QMAKE_CXXFLAGS += -std=c++11
