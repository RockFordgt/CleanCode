import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
   title: "Znaczące nazwy - Member Prefix"
   content:[
       "Prefixy nie są już potrzebne",
       " - małe jest piękne",
       " - używaj takiego IDE które podkreśli różnice"
   ]
   notes: "uwaga Qt: kolizje nazw w QT_PROPERTIES"
   CodeRect{
       id: withPrefix
       width: parent.width
       visible: false
       anchors.bottom: parent.bottom
       code:[
           "class Part{",
           "private:",
           "  String m_dsc; ///< The textual description",
           "public:",
           "  void setName(String name) {",
           "    m_dsc = name;",
           "  }",
           "};",
       ]
   }
   CodeRect{
       id: withoutPrefix
       width: parent.width
       visible: false
       anchors.bottom: parent.bottom
       code:[
           "class Part{",
           "private:",
           "  String description; ///< The textual description",
           "public:",
           "  void setDescription(String description) {",
           "    this->description = description;",
           "  }",
           "};",
       ]
       onVisibleChanged: {
           withPrefix.visible = !visible
       }
   }
   toShow: [withPrefix, withoutPrefix]

}
