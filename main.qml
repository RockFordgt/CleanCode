import QtQuick 2.0
import QtQuick.Window 2.1

Window{
    id: mainWindow
    visible: true
    visibility: Window.Windowed
    width: 800
    height: 600
    CleanCodePresentation{
        parentWindow: mainWindow
        anchors.fill: parent
        Keys.onPressed: {
            if(event.key == Qt.Key_F1){
                if(mainWindow.visibility == Window.Windowed){
                    mainWindow.visibility = Window.FullScreen
                } else {
                    mainWindow.visibility = Window.Windowed
                }
            }
        }
    }
}

