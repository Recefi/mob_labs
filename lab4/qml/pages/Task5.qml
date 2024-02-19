import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    DatePicker {
        date: new Date()
        anchors.verticalCenter: parent.verticalCenter
        onDateChanged: console.log(date)
    }
}
