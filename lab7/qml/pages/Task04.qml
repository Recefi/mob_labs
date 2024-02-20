import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent
        spacing: Theme.paddingSmall

        TrafficLight { id: redCircle }
        TrafficLight { id: yellowCircle }
        TrafficLight { id: greenCircle }
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
        }
    ]
}
