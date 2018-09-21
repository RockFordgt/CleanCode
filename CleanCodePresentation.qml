import QtQuick 2.5
import Qt.labs.presentation 1.0
import QtGraphicalEffects 1.0
import QtQuick.Window 2.1
//import Qt.labs.folderlistmodel 2.1


OpacityTransitionPresentation {
    id:cleanCodePresentation
    fontFamily: "Oxygen"
    codeFontFamily: "OxygenMono"
    anchors.fill: parent
    property variant slidesLoaded: []
    property variant slidesToLoad: []
    property bool fistLoad: true
    property int nextSlideToLoad
    property Component loadedSlide
//    property string slidesSource: "qrc:/"
//    property string slidesSource: "file:"
    property string slidesSource: "http://127.0.0.1/qml/"
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
        text:"Radosław Wicik <radoslaw@wicik.pl>"
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
//    FolderListModel{
//        id: slides
//        showDirs: false
//        folder: slidesSource
//        nameFilters: "Slide*.qml"
//        sortField: FolderListModel.Name
//        onCountChanged: {
//            console.log("new count:", count);
//            for(var i=0; i < count; i++){
//                var slideFile = get(i, "fileName");
//                loadSlide(slideFile)
//            }
//            if(fistLoad){
//                cleanCodePresentation.currentSlide = 0;
//                cleanCodePresentation.slides[0].visible = true;
//                fistLoad = false;
//            }
//        }
//    }

    Component.onCompleted: {
        slidesToLoad = [
                     "Slide_01.qml"
                    ,"Slide_02.qml"
                    ,"Slide_03_0.qml"
                    ,"Slide_03_1.qml"
                    ,"Slide_04.qml"
                    ,"Slide_05.qml"
                    ,"Slide_06.qml"
                    ,"Slide_07.qml"
                    ,"Slide_08.qml"
                    ,"Slide_09.qml"
                    ,"Slide_10.qml"
                    ,"Slide_11.qml"
                    ,"Slide_12.qml"
                    ,"Slide_13.qml"
                    ,"Slide_14.qml"
                    ,"Slide_15.qml"
                    ,"Slide_16.qml"
                    ,"Slide_17.qml"
                    ,"Slide_18.qml"
                    ,"Slide_19.qml"
                    ,"Slide_20.qml"
                    ,"Slide_21.qml"
                    ,"Slide_22.qml"
                    ,"Slide_23.qml"
                    ,"Slide_24.qml"
                    ,"Slide_25.qml"
                    ,"Slide_26.qml"
                    ,"Slide_27.qml"
                    ,"Slide_28.qml"
                    ,"Slide_29.qml"
                    ,"Slide_30.qml"
                ]
        loadSlides();
//        loadSlide("Slide_01.qml");
//        loadSlide("Slide_02.qml");
//        loadSlide("Slide_03_0.qml");
//        loadSlide("Slide_03_1.qml");
//        loadSlide("Slide_04.qml");
//        loadSlide("Slide_05.qml");
//        loadSlide("Slide_06.qml");
//        loadSlide("Slide_07.qml");
//        loadSlide("Slide_08.qml");
//        loadSlide("Slide_09.qml");
//        loadSlide("Slide_10.qml");
//        loadSlide("Slide_11.qml");
//        loadSlide("Slide_12.qml");
//        loadSlide("Slide_13.qml");
//        loadSlide("Slide_14.qml");
//        loadSlide("Slide_15.qml");
//        loadSlide("Slide_16.qml");
//        loadSlide("Slide_17.qml");
//        loadSlide("Slide_18.qml");
//        loadSlide("Slide_19.qml");
//        loadSlide("Slide_20.qml");
//        loadSlide("Slide_21.qml");
//        loadSlide("Slide_22.qml");
//        loadSlide("Slide_23.qml");
//        loadSlide("Slide_24.qml");
//        loadSlide("Slide_25.qml");
//        loadSlide("Slide_26.qml");
//        loadSlide("Slide_27.qml");
//        loadSlide("Slide_28.qml");
//        loadSlide("Slide_29.qml");
//        loadSlide("Slide_30.qml");


        console.log("length:", slides.length)
//        cleanCodePresentation.currentSlide = 0;
//        cleanCodePresentation.slides[0].visible = true;
    }
    function loadSlides(){
        nextSlideToLoad = 0;
        loadSlide();
    }

    function loadSlide(){
        console.log("current slide to load:", nextSlideToLoad, ":", slidesToLoad[nextSlideToLoad]);
        if(slidesToLoad.length > nextSlideToLoad){
            loadedSlide = Qt.createComponent(slidesToLoad[nextSlideToLoad]);
            if (loadedSlide.status == Component.Ready) {
                pushOnStack();
            } else {
                loadedSlide.statusChanged.connect(pushOnStack);
            }
        } else if (slidesToLoad.length) {
            cleanCodePresentation.currentSlide = 0;
            cleanCodePresentation.slides[0].visible = true;
        }
    }


    function pushOnStack(){
        if (loadedSlide.status == Component.Ready) {
            var slide = loadedSlide.createObject(cleanCodePresentation);
            if (slide.isSlide) {
                slidesLoaded.push(loadedSlide);
                cleanCodePresentation.slides.push(slide);
                nextSlideToLoad = nextSlideToLoad + 1;
                loadSlide();
            } else {
                loadedSlide.deleteLater();
            }
        } else if ( loadedSlide.status == Component.Error) {
            console.log(loadedSlide.errorString());
        }
    }

    function reloadCurrentSlide(){
        var url = cleanCodePresentation.slidesLoaded[cleanCodePresentation.currentSlide].url;
        console.log("source url:", url);

        loadedSlide = Qt.createComponent(url);
        if(loadedSlide.status == Component.Ready){
            replaceOldSlide();
        } else {
            loadedSlide.statusChanged.connect(replaceOldSlide);
        }

    }
    function replaceOldSlide() {
            console.log("replacing old slide");
            //create new
            var slide = loadedSlide.createObject(cleanCodePresentation);
            slide.visible = true;
            cleanCodePresentation.slides[cleanCodePresentation.currentSlide].visible = false;
            //delete old
            cleanCodePresentation.slides[cleanCodePresentation.currentSlide].destroy();
            //put new in place of old
            cleanCodePresentation.slides[cleanCodePresentation.currentSlide] = slide;
            console.log("relading finished.");
    }
}
