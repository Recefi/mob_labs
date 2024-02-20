import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property int sec: 0

    Column {
        anchors.centerIn: parent
        spacing: Theme.paddingLarge
        Row {
            spacing: Theme.horizontalPageMargin

            CounterLbl { valStr: parseInt(sec / 3600) + "ч." }
            CounterLbl { valStr: parseInt(sec / 60) % 60 + "м." }
            CounterLbl { valStr: sec % 60 + "с." }

            scale: 1.5
        }
        Button {
            text: (timer.running) ? "Пауза" : "Старт"
            onClicked: timer.running = !timer.running
        }
    }
    Timer {
        id: timer
        interval: 1
        running: false
        repeat: true
        onTriggered: sec++
    }
}
