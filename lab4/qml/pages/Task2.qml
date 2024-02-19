import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Button {
        anchors.centerIn: parent
        text: "Кнопка"

        property bool isClicked: false
        down: isClicked
        onClicked: { isClicked = true }
    }
}
