import QtQuick 2.1
import Qt.labs.presentation 1.0
import QtGraphicalEffects 1.0
import QtQuick.Window 2.1


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
            text:"Radosław Wicik <r.wicik@samsung.com>
v 1.0"
            color:"#bbb"
        }
    }

    Slide{
        id: slide_01
        title: "Po co ?"
        content: [
            "Kod jest dla nas",
            "To my jesteśmy użytkownikami kodu",
            "Inżynier więcej kodu czyta niż pisze",
            "Czysty kod łatwiej się cztya",
            "Menadżerom też powino zależeć",
            "Czysty kod = mniej bugów",
        ]
    }
    Slide{
        title: "Znaczące nazwy"
        content: [
            "Pisząc kod wymyślamy nazwy",
            "Dobra nazwa = czytelny kod",
            "Czytelny kod to taki który czyta się jak zwykłą książkę"
        ]
    }
    Slide {
        title: "Znaczące nazwy - opsujące cel"
        Row{
            anchors.fill: parent
            spacing: 50
            Column{
                width: parent.width/2 -25
                height: parent.height
                CodeRect{
                    width: parent.width
//                    height: parent.height
                    code:
                    "int dtid;
int dsc;
int dsm;
int faid;"
                }
            }
            Column{
                width: parent.width/2 -25
                height: parent.height
                CodeRect{
                    id: cleanCode
                    visible: false
                    width: parent.width
//                    height: parent.height
                    code:
                        " int elapsedTimeInDays;\n int daysSinceCreation;\n int daysSinceModification;\n int fileAgeInDays;"
                }
            }
        }
        toShow:[cleanCode]
    }
    Slide{
        title: "Znaczące nazwy - opsujące cel"
        Column{
            anchors.fill: parent
            spacing: 20
            CodeRect{
                id:code_01
                width: parent.width
                height: 170
                code:
"public List<int[]> getThem() {
    List<int[]> list1 = new ArrayList<int[]>();
    for (int[] x : theList)
        if (x[0] == 4)
            list1.add(x);
    return list1;
}"
            }
            CodeRect{
                id:code_02
                width: parent.width
                height: 180
                visible: false
                code:
"public List<int[]> getFlaggedCells() {
    List<int[]> flaggedCells = new ArrayList<int[]>();
    for (int[] cell : gameBoard)
        if (cell[STATUS_VALUE] == FLAGGED)
            flaggedCells.add(cell);
    return flaggedCells;
}"
            }
            CodeRect{
                id:code_03
                width: parent.width
                visible: false
                height: 180
                code:
"public List<Cell> getFlaggedCells() {
    List<Cell> flaggedCells = new ArrayList<Cell>();
    for (Cell cell : gameBoard)
        if (cell.isFlagged())
            flaggedCells.add(cell);
    return flaggedCells;
}"
            }
        }
        toShow:[code_02,code_03]
        notes: "1. Co jest w theList?
2. Co oznacza element [0] w theList?
3. Jakie ma znaczenie wartość 4?
4. Jak użyć zwracanej listy?
- brak odpowiedzi na te pytania - przydał by się kontekst.
-----
- [0] - to status, 4 to \"oflagowany\"
-----
- idźmy dalej, zmieńmy int na prostą klasę \"Cell\"

"
    }
    Slide{
        title: "Znaczące nazwy - unikaj dezinformacji"
        content: ["unikaj słów, które mogą mieć dodatkowe znaczenie",
            " hp",
            " aix",
            " sco",
            "Nie używaj słów typu <code>List</code>, nawet jeśli obiekt faktycznie jest listą",
            "Nie żywaj podobnych nazw",
            " XYZControllerForEfficientHandlingOfStrings",
            " XYZControllerForEfficientStorageOfStrings",
        ]
    }
    Slide{
        title: "Znaczące nazwy - "
        content: ["unikaj słów, które mogą mieć dodatkowe znaczenie",
            " hp",
            " aix",
            " sco",
            "Nie używaj słów typu <code>List</code>, nawet jeśli obiekt faktycznie jest listą",
            "Nie żywaj podobnych nazw",
            " XYZControllerForEfficientHandlingOfStrings",
            " XYZControllerForEfficientStorageOfStrings",
        ]
    }
}

