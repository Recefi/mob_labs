import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Label {
        id: txt
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Текст"
        font.pixelSize: 80
        y: 0
        color: "blue"
        rotation: 0
    }
    MouseArea {
        id: mouse
        anchors.fill: parent
    }

    state: {
        if (mouse.pressedButtons) { "forward" }
        else { "backward" }
    }
    states: [
        State { name: "forward" },
        State { name: "backward" }
    ]
    transitions: [
        Transition {
            from: "backward"
            to: "forward"
            ParallelAnimation {
                NumberAnimation { target: txt; properties: "y"; from: txt.y; to: page.height; duration: 1000 }
                PropertyAnimation { target: txt; properties: "color"; from: txt.color; to: "red"; duration: 1000 }
                RotationAnimation { target: txt; from: txt.rotation; to: 180; duration: 1000 }
            }
        },
        Transition {
            from: "forward"
            to: "backward"
            ParallelAnimation {
                NumberAnimation { target: txt; properties: "y"; from: txt.y; to: 0; duration: 1000 }
                PropertyAnimation { target: txt; properties: "color"; from: txt.color; to: "blue"; duration: 1000 }
                RotationAnimation { target: txt; from: txt.rotation; to: 0; duration: 1000 }
            }
        }
    ]
}
