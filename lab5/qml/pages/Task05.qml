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
                dialog.open()
                dialog.accepted.connect(function() { lbl.text = dialog.timeText })
            }
        }
        Label {
            id: lbl
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    TimePickerDialog {
        id: dialog
    }
}
