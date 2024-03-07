import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        spacing: Theme.paddingMedium

        Button {
            anchors.left: parent.left
            text: "Назад"
            onClicked: pageStack.pop()
        }
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Глубина стека: " + pageStack.depth
        }
        Button {
            anchors.right: parent.right
            text: "Вперед"
            onClicked: pageStack.push(Qt.resolvedUrl("Task01.qml"))
        }
    }
}
