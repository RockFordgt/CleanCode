import QtQuick 2.3
import Qt.labs.presentation 1.0
import QtGraphicalEffects 1.0
import QtQuick.Window 2.1
import Qt.labs.folderlistmodel 2.1


OpacityTransitionPresentation {
    id:cleanCodePresentation
    fontFamily: "Oxygen"
    codeFontFamily: "OxygenMono"
    anchors.fill: parent

    BackgroundSwirls{
        /*color2: "green"
        color1: "greenyellow"*/
        color1:"darkcyan"
        color2:"darkgreen"
        //paricles: false
        paricles: true
    }
    SlideCounter{
        opacity: (currentSlide==0) ? 0.0: 1.0;
        Behavior on opacity{
            NumberAnimation{
                duration: 3000
            }
        }
    }
    Text{
        id:who
        color: "#bbb" //parent.textColor != undefined ? parent.textColor : "#bbb"
        font.family: parent.fontFamily != undefined ? parent.fontFamily : "Helvetica"
        font.pixelSize: parent.height * 0.05 * 0.45 //ostatnia zmienna to skala
        text:"Radosław Wicik <r.wicik@samsung.com>"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: font.pixelSize
        opacity: (currentSlide==0) ? 0.0: 1.0;
        Behavior on opacity{
            NumberAnimation{
                duration: 3000
            }
        }
    }

    FolderListModel{
        id:files
        nameFilters: ["Slide_*.qml"]
        folder: "qrc:///"
        sortField: FolderListModel.Name
    }
    Slide{
        title:"slides"

        ListView{
            anchors.fill: parent
            model: files
            delegate: Component{
                Text {
                    id:fileNameField
                    //width:200
//                    height: 15
                    text: fileName
                    color:"black"
                    font.pixelSize: 28
                    anchors.margins: 30
                    Rectangle{
                        anchors.fill: fileNameField
                        z: fileNameField.z - 3;
                        color: "ivory"
                        border.color: "blue"
                    }
                }
            }
        }
    }
    Component.onCompleted: {
        for(var i = 0; i < files; i++){
            var fileName = files.get(i, "fileName");
            if(fileName)
            console.log
        }
    }

    Slide_01{}
    Slide_02{}
    Slide_03{}
    Slide_04{}
    Slide_05{}
    Slide_06{}
    Slide_07{}

    Slide_08{}
    Slide_09{}
    Slide_10{}

    Slide_11{}
    Slide_12{}
    Slide_13{}

}
