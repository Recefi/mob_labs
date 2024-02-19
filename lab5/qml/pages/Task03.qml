import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent
        spacing: Theme.paddingMedium

        Button {
            text: "Диалог"
            onClicked: {
                dialog.open()
                dialog.accepted.connect(function() { lbl.text = dialog.txtFldVal })
            }
        }
        Label {
            id: lbl
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Dialog {
        id: dialog
        property alias txtFldVal: txtFld.text

        Column {
            anchors.fill: parent
            DialogHeader {}
            TextField {
                id: txtFld
                anchors.centerIn: parent
                width: parent.width / 2
            }
        }
    }
}

