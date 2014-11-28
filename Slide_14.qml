import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
   title: "Nazwy metod/funkcji"
   content:[
       "metody coś robią!",
       "powinny zawierać czasownik lub wrażenie czasownikowe",
       " postPayment",
       " deletePage",
       " save",
       "getery, setery i ożeczenia",
       " poiwnny mieć przedrostki",
       "  get (dróga szkłoa mówi że geter nie musi mięć przedrostka)",
       "  set",
       "  is"
   ]
   notes:""
   CodeRect{
       id: withoutPrefix
       width: parent.width
       visible: false
       anchors.bottom: parent.bottom
       code:[
           "class Part{",
           "private:",
           "  String description; //The textual description",
           "public:",
           "  void setDescription(const String& description) {",
           "    this->description = description;",
           "  }",
           "  String description() const {",
           "    return this->description;",
           "  }",
           "};",
       ]
   }
   toShow: [withoutPrefix]
}
