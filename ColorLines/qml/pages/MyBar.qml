import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    height: parent.height
    width: (parent.width - board.width) / 2
    property string name: ""
    property real maxVal
    property real curVal
    property bool showCrown: false

    Rectangle {
        anchors.centerIn: parent
        width: 0.4 * parent.width
        height: 0.8 * board.height
        color: mainFrame.color

        Rectangle {
            id: bar
            anchors.bottom: parent.bottom
            width: parent.width
            height: curVal/maxVal * parent.height
            color: "gray"
            border.color: "dimgrey"
            border.width: 5
        }
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.bottom
            anchors.topMargin: Theme.paddingSmall
            font.pixelSize: 30
            text: name
            color: "yellow"
        }
        Icon {
            source: "crown.png"
            anchors.bottom: bar.top
            width: parent.width
            height: width
            color: "yellow"
            opacity: showCrown
        }
    }
}
