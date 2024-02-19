import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Rectangle { width: page.width/3; height: page.width/3; color: "#000000"; }
    Rectangle {
        id: b
        width: page.width/3; height: page.width/3; color: "#000000";
        transform: [Translate{x: 600}, Translate{y: -300}, Scale{xScale: 0.5}, Rotation{angle: 45}]
    }
    Item {
        anchors.top: b.bottom;
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
            onClicked: pageStack.push(Qt.resolvedUrl("Task7.qml"))
        }
    }
}
