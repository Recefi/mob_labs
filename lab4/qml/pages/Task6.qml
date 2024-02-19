import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    TimePicker {
        id: tp
        anchors.centerIn: parent
        onTimeChanged: console.log(timeText)
    }
    Label {
        anchors.centerIn: tp
        text: tp.timeText
    }
}
