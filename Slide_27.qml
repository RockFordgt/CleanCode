import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
    title: "Komentaże informacyjne"
    content:[
        "Czasami przydatne",
        " Może lepiej zmienić nazwę funkcji?",
        " Może przenieść kod?"

    ]
    notes:""
    Column{
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        height: childrenRect.height
        spacing:50
        Behavior on height{
            NumberAnimation{ duration: 1000}
        }

        CodeRect{
            id:wrongName
            width: parent.width
            code: [
                 "protected:",
                  "  // Returns an instance of the Responder being tested.",
                  "  Responder responderInstance() = 0;"]
            visible: false
        }

        CodeRect{
            id:betterName
            width: parent.width
            code: [
                  " ",
                  "protected:",
                  "  Responder ResponderBeingTested() = 0;"]
            visible: false
        }

        CodeRect{
            id:anotherExample
            width: parent.width
            code:[
                "// format matched kk:mm:ss EEE, MMM dd, yyyy",
                "Pattern timeMatcher = Pattern.compile(",
                "\"\\d*:\\d*:\\d* \\w*, \\w* \\d*, \\d*\");"]
            visible: false
        }
    }
    toShow: [wrongName,betterName,anotherExample]
}
