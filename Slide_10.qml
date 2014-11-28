import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
    title: "Kodowanie typów"
    content:[
        "Kodowane typów zmiennych:",
        " dodatkowa warstwa",
        " każda nowa osoba musi nauczyć się (\"języka\") kodowania typów",
        " zakodowane nazwy często nie dają się przeczytać",
        "Notacja Węgierska - <b>Nie używać!</b>",
    ]
    notes:
        "<p>dodatkowa warstwa - którą trzeba rozszyforować
        jest to dodatowy narzut mentalny<br />
        Notacja Węgierska<ul>
         <li>powstała dawno bo
           <ul><li>były oganiczenia na długość nazw</li>
               <li>fortran kodowanie typów w nazwie</li>
               <li>BASIC zmienna = litera + cyfra</li></ul></li>
         <li>windows używał bo:
           <ul><li>wszystko było:</li>
               <li>intigerem</li>
               <li>void pointer</li>
               <li>alob jakimś rodszajem stringa</li></ul></li>
         <li>Kompilatory nie wspierały porawnego sprawdzania typów</li></ul></p>"
    CodeRect{
        id:example_variables
        width: parent.width*0.9
        anchors.bottom: parent.bottom
        visible: false
        code:[
            "HGLRC     hRC=NULL;  // Permanent Rendering Context",
            "HDC       hDC=NULL;  // Private GDI Device Context",
            "HWND      hWnd=NULL; // Holds Our Window Handle",
            "HINSTANCE hInstance; // Holds The Instance Of The Application",
        ]
    }
    CodeRect{
        id:example_definitions
        width: parent.width*0.9
        anchors.bottom: parent.bottom
        visible: false
        code:[
            "BOOL Create(",
            "   UINT nSocketPort = 0,",
            "   int nSocketType = SOCK_STREAM,",
            "   LPCTSTR lpszSocketAddress = NULL ",
            ");",
            " ",
            "LRESULT CALLBACK WndProc(",
            "    HWND    hWnd,  // Handle For This Window",
            "    UINT    uMsg,  // Message For This Window",
            "    WPARAM  wParam,// Additional Message Information",
            "    LPARAM  lParam);// Additional Message Information",
        ]
        onVisibleChanged: {
            example_variables.visible = !visible
        }
    }
    toShow: [example_variables,example_definitions]
}
