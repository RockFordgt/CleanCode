import QtQuick 2.0
import QtQuick.Window 2.1

Window{
    id: mainWindow
    visible: true
//    visibility: Window.Windowed
//    width: 1219
//    height: 825
//    anchors.fill: parent
    CleanCodePresentation{
        parentWindow: mainWindow
        anchors.fill: parent
        Keys.onPressed: {
            switch(event.key){
            case Qt.Key_F1: switchFullScreen(); break;
            case Qt.Key_F5: reloadCurrentSlide(); break;
            }
        }
    }
    function switchFullScreen(){
        if(mainWindow.visibility == Window.Windowed){
            mainWindow.visibility = Window.FullScreen
        } else {
            mainWindow.visibility = Window.Windowed
        }
    }
}

