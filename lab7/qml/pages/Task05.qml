import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent
        spacing: Theme.paddingLarge

        CustomButton {
            Text { text: "Текст 1" }
        }
        CustomButton {
            Label { text: "Текст 2" }
            btnColor: "red"
        }
        CustomButton {
            TextField { text: "Текст 3" }
            btnColor: "green"
        }
    }
}
