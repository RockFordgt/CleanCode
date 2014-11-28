import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
    title: "Znaczące nazwy - dobre nazwy (1)"
    content:[
        "do przeczytania",
        " genymdhms vs. generationTimestamp",
        "do znalezienia",
        " 7 vs. MAX_CLASSES_PER_STUDENT",
        "długie nazwy lepsze od krótkich",
        " długość nazwy powinna odpowiadać zasięgowi",
        "zmienne/stałe używanne w welu miejscach powinny mieć nazwę",
    ]
    Row{
        CodeRect{
            width: parent.width*0.4
            code:[
                "for (int j=0; j<34; j++) {",
                "s += (t[j]*4)/5;",
                "}",
                ]

        }
        CodeRect{
            width: parent.width * 0.5
            code:[
                "int realDaysPerIdealDay = 4;",,
                "const int WORK_DAYS_PER_WEEK = 5;",
                "int sum = 0;",
                "for (int j=0; j < NUMBER_OF_TASKS; j++) {",
                "  int realTaskDays = taskEstimate[j] * realDaysPerIdealDay;",
                "  int realTaskWeeks = (realdays / WORK_DAYS_PER_WEEK);",
                "  sum += realTaskWeeks;",
                "}"
            ]
        }
    }
}
