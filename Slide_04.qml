import QtQuick 2.3
import Qt.labs.presentation 1.0

Slide {
    title: "Znaczące nazwy - opsujące cel"
    Row{
        anchors.fill: parent
        spacing: 50
        Column{
            width: parent.width/2 -25
            height: parent.height
            CodeRect{
                id: badCode
                visible: false
                width: parent.width
                //height: 140
                code:[
                    "int etid;",
                    "int dsc;",
                    "int dsm;",
                    "int faid;"
                ]
            }
        }
        Column{
            width: parent.width/2 -25
            height: parent.height
            CodeRect{
                id: cleanCode
                visible: false
                width: parent.width
                //height: 140
                code:[
                    "int elapsedTimeInDays;",
                    "int daysSinceCreation;",
                    "int daysSinceModification;",
                    "int fileAgeInDays;"
                ]
            }
        }
    }
    toShow:[badCode,cleanCode]
}
