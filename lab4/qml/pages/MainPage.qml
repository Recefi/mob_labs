
import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent
        spacing: Theme.paddingMedium

        Button { text: "1"; onClicked: pageStack.push(Qt.resolvedUrl("Task1.qml")); }
        Button { text: "2"; onClicked: pageStack.push(Qt.resolvedUrl("Task2.qml")); }
        Button { text: "3"; onClicked: pageStack.push(Qt.resolvedUrl("Task3.qml")); }
        Button { text: "4"; onClicked: pageStack.push(Qt.resolvedUrl("Task4.qml")); }
        Button { text: "5"; onClicked: pageStack.push(Qt.resolvedUrl("Task5.qml")); }
        Button { text: "6"; onClicked: pageStack.push(Qt.resolvedUrl("Task6.qml")); }
        Button { text: "7"; onClicked: pageStack.push(Qt.resolvedUrl("Task7.qml")); }
        Button { text: "8"; onClicked: pageStack.push(Qt.resolvedUrl("Task8.qml")); }
        Button { text: "9"; onClicked: pageStack.push(Qt.resolvedUrl("Task9.qml")); }
    }
}
