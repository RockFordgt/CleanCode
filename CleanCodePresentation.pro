TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp

RESOURCES += qml.qrc

CONFIG+=qml_debug

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

OTHER_FILES= *.qml

#copying slides to build dir
copyslides.commands = $(COPY_DIR) $$PWD/Slide_*.qml $$OUT_PWD
first.depends = $(first) copyslides
export(first.depends)
export(copyslides.commands)
QMAKE_EXTRA_TARGETS += first copyslides
