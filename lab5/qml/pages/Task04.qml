import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        spacing: Theme.paddingMedium

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Диалог"
            onClicked: {
                var dialog = pageStack.push("Sailfish.Silica.DatePickerDialog", {date: new Date()})
                dialog.accepted.connect(function() { lbl.text = dialog.date.toDateString() })
            }
        }
        Label {
            id: lbl
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
