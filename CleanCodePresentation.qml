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
    property variant slidesLoaded: []
    property bool fistLoad: true
//    property string slidesSource: "qrc:/"
    property string slidesSource: "file:"
    BackgroundSwirls{
        /*color2: "green"
        color1: "greenyellow"*/
        color1:"darkcyan"
        color2:"darkgreen"
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
        id: slides
        showDirs: false
        folder: slidesSource
        nameFilters: "Slide*.qml"
        sortField: FolderListModel.Name
        onCountChanged: {
            console.log("new count:", count);
            for(var i=0; i < count; i++){
                var slideFile = get(i, "fileName");
                loadSlide(slideFile)
            }
            if(fistLoad){
                cleanCodePresentation.currentSlide = 0;
                cleanCodePresentation.slides[0].visible = true;
                fistLoad = false;
            }
        }
    }

    Component.onCompleted: {
        console.log("count:", slides.count)
    }
    function loadSlide(slideFile){
        if( cleanCodePresentation.slidesLoaded.indexOf(slideFile) < 0 ){
            var slide = Qt.createComponent(slidesSource + slideFile)
            console.log("Loading slide:", slideFile, "(",cleanCodePresentation.slides.length,")", slide.url)
            if(slide.status == Component.Ready){
                var slideObject = slide.createObject(cleanCodePresentation);
                if(slideObject.isSlide){
                    cleanCodePresentation.slides.push(slideObject);
                    cleanCodePresentation.slidesLoaded.push(slideFile);
                }
            } else {
                console.log(slide.status, ":", slide.errorString() )
            }
        }
    }
    function reloadCurrentSlide(){
        //create new
        //hide old
        //show new
        //delete old
        //put new in place of old
    }
}
