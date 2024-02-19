import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Item {
        id: dropArea
        anchors.horizontalCenter: parent.horizontalCenter
        height: 1000
        Rectangle {
            id: rect
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200; height: 200; color: "#000000";
            ParallelAnimation {
                running: true
                PropertyAnimation {target: rect; property: "y"; to: 600; duration: 2000; loops: Animation.Infinite}
                PropertyAnimation {target: rect; property: "scale"; to: 2; duration: 2000; loops: Animation.Infinite}
            }
        }
    }
    Item {
        anchors.top: dropArea.bottom;
        anchors.topMargin: Theme.paddingLarge
        width: page.width
        Button {
            anchors.left: parent.left
            text: "Назад"
            onClicked: pageStack.pop()
        }
        Button {
            anchors.right: parent.right
            text: "Далее"
            onClicked: pageStack.push(Qt.resolvedUrl("Task8.qml"))
        }
    }
}
