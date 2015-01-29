import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
    title: "Wjaśnienia zamierzeń"

    CodeRect{
        id:explanaion
        width: parent.width
        code: [
            "public int compareTo(Object o){",
            "  if(o instanceof WikiPagePath){",
            "    WikiPagePath p = (WikiPagePath) o;",
            "    String compressedName = StringUtil.join(names, \"\");",
            "    String compressedArgumentName = StringUtil.join(p.names, \"\");",
            "    return compressedName.compareTo(compressedArgumentName);",
            "  }",
            "  return 1; // we are greater because we are the right type.",
            "}"
        ]
    }
}
