import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        spacing: Theme.paddingMedium

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Прикрепить страницу"
            onClicked: pageStack.pushAttached(Qt.resolvedUrl("Task02_2.qml"))
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Открепить страницу"
            onClicked: pageStack.popAttached()
        }
    }
}
