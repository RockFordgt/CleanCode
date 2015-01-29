import QtQuick 2.3
import Qt.labs.presentation 1.0
Slide{
    title: "Czytelny kod nie wymaga komentarzy"
    Column{
        anchors.fill: parent
        spacing: 50
        CodeRect{
            id:badCode
            width: parent.width
            code:[
                " ",
                "if ((employee.flags & HOURLY_FLAG) && (employee.age > 65))",
                " "
            ]
            visible: false
        }
        CodeRect{
            id:withComment
            width: parent.width
            code:[
                "// Check to see if the employee is eligible for full benefits",
                "if ((employee.flags & HOURLY_FLAG) && (employee.age > 65))",
                " "
            ]
            visible: false
        }
        CodeRect{
            id:withOutComment
            width: parent.width
            code:[
                " ",
                "if (employee.isEligibleForFullBenefits())",
                " "
            ]
            visible: false
        }
    }

    toShow: [badCode,withComment,withOutComment]
}
