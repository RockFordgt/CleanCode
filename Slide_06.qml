import QtQuick 2.3
import Qt.labs.presentation 1.0

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
    CodeRect{
        id:bad_1ilI
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        width: parent.width * 0.25
        code: [
            "int a = l;",
            "if ( O == I );",
            "    a = O1;",

            "else",
            "    l = 01;",
        ]
        visible: false
        codeFontFamily: "DejaVu Sans"
    }
    CodeRect{
        id:bad_1ilI_2
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        width: parent.width * 0.25
        code: [
            "int a = l;",
            "if ( O == I );",
            "    a = O1;",

            "else",
            "    l = 01;",
        ]
        visible: false
        onVisibleChanged:bad_1ilI.visible = !visible
    }

    toShow: [bad_1ilI, bad_1ilI_2]
}
