import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
    title: "Znaczące nazwy - opsujące cel"
    Column{
        anchors.fill: parent
        spacing: 20
        CodeRect{
            id:code_01
            width: parent.width
            code:[
              "public List<int[]> getThem() {",
              "    List<int[]> list1 = new ArrayList<int[]>();",
              "    for (int[] x : theList)",
              "        if (x[0] == 4)",
              "            list1.add(x);",
              "    return list1;",
              "}",
            ]
        }
        CodeRect{
            id:code_02
            width: parent.width
            visible: false
            code:[
              "public List<int[]> getFlaggedCells() {",
              "    List<int[]> flaggedCells = new ArrayList<int[]>();",
              "    for (int[] cell : gameBoard)",
              "        if (cell[STATUS_VALUE] == FLAGGED)",
              "            flaggedCells.add(cell);",
              "    return flaggedCells;",
              "}",
            ]
        }
        CodeRect{
            id:code_03
            width: parent.width
            visible: false
            code:[
              "public List<Cell> getFlaggedCells() {",
              "    List<Cell> flaggedCells = new ArrayList<Cell>();",
              "    for (Cell cell : gameBoard)",
              "        if (cell.isFlagged())",
              "            flaggedCells.add(cell);",
              "    return flaggedCells;",
              "}",
            ]
        }
    }
    toShow:[code_02,code_03]
    notes:
            "
               1. Co jest w theList?<br />+
               2. Co oznacza element [0] w theList?<br />
               3. Jakie ma znaczenie wartość 4?<br />
               4. Jak użyć zwracanej listy?<br />
               - brak odpowiedzi na te pytania - przydał by się kontekst.<br />

               -----<br />
               - [0] - to status, 4 to \"oflagowany\"<br />
               -----<br />
               - idźmy dalej, zmieńmy int na prostą klasę \"Cell\""
}
