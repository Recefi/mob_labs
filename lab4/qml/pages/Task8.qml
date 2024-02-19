import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    TextSwitch {
        anchors.centerIn: parent
        width: parent.width / 2
        text: checked ? "Включен" : "Выключен"
    }
}
