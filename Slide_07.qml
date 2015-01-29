import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
    title: "Znaczące nazwy - Szum informacyjny."
    content: [
        "Zmienne po to by zadowolić kompilator to \"Zło\"",
        " Celowe błędy ortograficzne! (<tt>klass</tt> bo <tt>class</tt> jest słowem kluczowym)",
        " dodawanie numerków nie wnosi żadnej informacji",
        " Szum informacyjny - zaciemnia kod:",
        "  data",
        "  info",
        "  variable",
        "  string",
    ]
    notes: "Czy \"NameString\" od słowa Name?
            A może \"Name\" może być typu float => dezinformacja
            --
            PhoneNumber phoneString.
            --
            getActiveAccount();
            getActiveAccounts();
            getActiveAccountInfo():
            --
            Customer
            CustomerObject
            Product
            ProductInfo
            ProductData
              - Info i Data nic nie wnoszą, bo nie ma (nie znamy?) konwencji"

    CodeRect{
        id: addNumberExample_idexedNames
        code:[
          "public static void copyChars(char a1[], char a2[]) {",
          "    for (int i = 0; i < a1.length; i++) {",
          "        a2[i] = a1[i];",
          "    }",
          "}",
        ]
        visible:false
        width: parent.width*0.8
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }

    CodeRect{
        id: addNumberExample_readableNames
        code:[
          "public static void copyChars(char source[], char destination[]) {",
          "    for (int i = 0; i < source.length; i++) {",
          "        destination[i] = source[i];",
          "    }",
          "}",
        ]
        visible:false
        width:( parent.width*0.9)//2)/3
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        onVisibleChanged:{
            //do not use visibility, slides toShow is based on it.
            addNumberExample_idexedNames.visible = !visible && !getAccount.visible;
        }
    }
    CodeRect{
        id: getAccount
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        visible: false
        width:( parent.width*0.8)
        code:[
            "getActiveAccount();",
            "getActiveAccounts();",
            "getActiveAccountInfo();",
        ]
        onVisibleChanged: addNumberExample_readableNames.visible = !visible
    }

    toShow: [addNumberExample_idexedNames, addNumberExample_readableNames,getAccount]
}
