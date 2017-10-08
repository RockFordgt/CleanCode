import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
    title: "Komentarze"
    titleColor: "transparent"
    Image {
        id: imiona
        source: "grafika/Plotka.png"

        fillMode: Image.PreserveAspectFit
        anchors.top: authors.bottom
        anchors.topMargin: -authors.height
        anchors.left: parent.left
        anchors.leftMargin: parent.width*0.1
        anchors.bottom: parent.bottom
        opacity: 0.9
    }
    Text{
        id:titleText
        text: "Komentarze"
        anchors.right: parent.right
        font.pixelSize: parent.height * 0.1
        color: parent.textColor
    }
    Text{
        id:citation
        text: "\"Nie komentuj złego kodu - popraw go.\""
        anchors.right: parent.right
        //anchors.bottom: parent.bottom
        anchors.top:titleText.bottom
        anchors.topMargin: height
        font.pixelSize: parent.height * 0.06
        color: parent.textColor
    }
    Text{
        id:authors
        text:"Brian W. Kernigham i P. J. Plaugher"
        anchors.top:citation.bottom
        anchors.right: citation.right
        font.pixelSize: parent.height * 0.05
        color:parent.textColor
    }
}
