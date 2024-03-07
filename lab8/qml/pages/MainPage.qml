import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent
        spacing: Theme.paddingMedium

        Button { text: "1"; onClicked: pageStack.push(Qt.resolvedUrl("Page1.qml")); }
        Button { text: "2"; onClicked: pageStack.push(Qt.resolvedUrl("Page2.qml")); }
    }
}
