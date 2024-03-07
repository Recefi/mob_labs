import QtQuick 2.0

Rectangle {
    property string frameText: ""

    color: "black"
    border.color: "darkgrey"
    border.width: 8

    Text {
        id: txt
        anchors.centerIn: parent
        text: frameText
        color: "green"
    }
    width: 1.5*txt.width
    height: 1.5*txt.height
}
