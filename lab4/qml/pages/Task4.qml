import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ValueButton {
        anchors.centerIn: parent
        width: parent.width / 2

        label: "Счётчик"
        value: "0"
        description: "Нажатий на кнопку"
        onClicked: value++
    }
}
