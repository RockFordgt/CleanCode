import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
    title: "Znaczące nazwy - dobre nazwy (2)"

    Column{
        anchors.fill: parent
        spacing: parent.height * 0.1
        CodeRect{
            width: parent.width
            code:[
                "for (int j=0; j<34; j++) {",
                "   s += (t[j]*4)/5;",
                "}",
            ]

        }
        CodeRect{
            width: parent.width
            code:[
                "int realDaysPerIdealDay = 4;",,
                "const int WORK_DAYS_PER_WEEK = 5;",
                "int sum = 0;",
                "for (int j=0; j < NUMBER_OF_TASKS; j++) {",
                "    int realTaskDays = taskEstimate[j] * realDaysPerIdealDay;",
                "    int realTaskWeeks = (realdays / WORK_DAYS_PER_WEEK);",
                "    sum += realTaskWeeks;",
                "}"
            ]
        }
    }
}
