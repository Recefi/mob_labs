import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.verticalCenter: parent.verticalCenter
        spacing: Theme.paddingMedium

        Slider {
            id: sl
            width: page.width

            minimumValue: 0
            maximumValue: 100
            stepSize: 0.1
        }
        TextField {
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: TextInput.AlignHCenter
            width: sl.width / 2

            text: sl.value
            onTextChanged: sl.value = text
            inputMethodHints: Qt.ImhDigitsOnly
        }
    }
}
