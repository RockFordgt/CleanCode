import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
    title: "Znaczące Nazwy - sekcja"
    visibleTitle: false
    Text{
        text: "Znaczące Nazwy"
        anchors.right: parent.right
//        anchors.bottom: whoami.top
//        anchors.bottomMargin: 80
        font.pixelSize: parent.height * 0.1
        color: parent.textColor
    }
    Image {
        id: imiona
        source: "grafika/imiona.png"
        width: parent.width*0.7
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent
        opacity: 0.8
    }
}
