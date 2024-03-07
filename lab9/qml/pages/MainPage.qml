import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent
        spacing: Theme.paddingMedium

        Button { text: "1"; onClicked: pageStack.push(Qt.resolvedUrl("Task01.qml")); }
        Button { text: "2"; onClicked: pageStack.push(Qt.resolvedUrl("Task02.qml")); }
        Button { text: "3"; onClicked: pageStack.push(Qt.resolvedUrl("Task03.qml")); }
        Button { text: "4"; onClicked: pageStack.push(Qt.resolvedUrl("Task04.qml")); }
        Button { text: "5"; onClicked: pageStack.push(Qt.resolvedUrl("Task05.qml")); }
        Button { text: "6"; onClicked: pageStack.push(Qt.resolvedUrl("Task06.qml")); }
        Button { text: "7"; onClicked: pageStack.push(Qt.resolvedUrl("Task07.qml")); }
    }
}
