import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent
        Button {
            id: btn
            text: "Кнопка"
        }
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: btn.down ? "Нажата" : "Отпущена"
        }
    }
}
