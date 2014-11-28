import QtQuick 2.3
import Qt.labs.presentation 1.0

Slide{
    id:slide_00
    centeredText: "Czysty Kod!"
    fontScale: 4
    Text{
        text: "czyli jak pisać lepszy kod"
        anchors.right: parent.right
        anchors.bottom: whoami.top
        anchors.bottomMargin: 80
        font.pixelSize: parent.height * 0.1
        color: parent.textColor
    }
    Text{
        id:whoami
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        text:"Radosław Wicik <r.wicik@samsung.com>\nv 1.0"
        color:"#bbb"
    }
}
