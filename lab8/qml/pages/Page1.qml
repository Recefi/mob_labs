import QtQuick 2.0
import Sailfish.Silica 1.0
import com.counter 1.0

Page {
    Counter {
        id: counter
        count: 10
    }

    Column {
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        spacing: Theme.paddingMedium

        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: counter.count
            font.pixelSize: 100
        }
        Button {
            width: parent.width
            text: "Увеличить"
            onClicked: { counter.increment(); }
        }
        Button {
            width: parent.width
            text: "Сбросить"
            onClicked: { counter.reset(); }
        }
    }
}
