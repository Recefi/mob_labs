import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        id: col
        anchors.centerIn: parent
        spacing: Theme.paddingSmall

        Rectangle {
            id: redCircle
            width: 200
            height: width
            radius: width*0.5
            border.width: 10
            border.color: "grey"
        }
        Rectangle {
            id: yellowCircle
            width: 200
            height: width
            radius: width*0.5
            border.width: 10
            border.color: "grey"
        }
        Rectangle {
            id: greenCircle
            width: 200
            height: width
            radius: width*0.5
            border.width: 10
            border.color: "grey"
        }
    }
    Icon {
        id: person
        anchors.top: col.bottom
        anchors.topMargin: Theme.paddingLarge
        source: "image://theme/icon-m-media-artists"
        opacity: 0
        NumberAnimation {
            id: anim
            target: person
            property: "x"
            from: 0
            to: parent.width
            duration: 2000
        }
    }

    property int count: 0
    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: { parent.count = (parent.count + 1) % 5; }
    }
    state: {
        if (count < 2) { "red" }
        else if (count < 3) { "yellow" }
        else { "green" }
    }
    states: [
        State {
            name: "red"
            PropertyChanges { target: redCircle; color: "red" }
            PropertyChanges { target: yellowCircle; color: "black" }
            PropertyChanges { target: greenCircle; color: "black" }
        },
        State {
            name: "yellow"
            PropertyChanges { target: redCircle; color: "black" }
            PropertyChanges { target: yellowCircle; color: "yellow" }
            PropertyChanges { target: greenCircle; color: "black" }
        },
        State {
            name: "green"
            PropertyChanges { target: redCircle; color: "black" }
            PropertyChanges { target: yellowCircle; color: "black" }
            PropertyChanges { target: greenCircle; color: "green" }
            PropertyChanges { target: person; opacity: 1 }
            PropertyChanges { target: anim; running: true }
        }
    ]
}
