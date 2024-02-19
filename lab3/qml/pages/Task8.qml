import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        spacing: parent.height / 5

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Диалог"
            onClicked: dialog.open()
        }
        Button {
           anchors.left: parent.left
           text: "Назад"
           onClicked: pageStack.pop()
        }
    }

    Dialog {
        id: dialog
        Column {
            anchors.fill: parent
            DialogHeader {}
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                TextField {
                    id: fld1
                    width: 0.4 * page.width
                    placeholderText: "1"
                }
                TextField {
                    id: fld2
                    width: 0.4 * page.width
                    placeholderText: "2"
                }
            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Сложить"
            }
        }
        onAccepted: console.log(parseInt(fld1.text) + parseInt(fld2.text))
    }
}
