
import QtQuick 2.0
import Sailfish.Silica 1.0

Rectangle {
    property string cirClr: ""
    property real cirScale: 1

    width: board.cellWidth
    height: width
    color: "lightgrey"
    border.color: "dimgrey"
    border.width: 2

    Rectangle {
        anchors.centerIn: parent
        width: 0.7*board.cellWidth
        height: width
        radius: width/2
        border.color: "black"
        opacity: (cirClr == "") ? 0 : 1
        color: (cirClr == "") ? "#fff" : cirClr
        scale: cirScale
    }
}
