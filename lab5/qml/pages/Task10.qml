import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        anchors.fill: parent

        model: 15
        delegate: ListItem {
            Label {
                x: Theme.paddingLarge
                text: "Пункт " + index
            }
            menu: ContextMenu {
                MenuLabel { text: "Меню" }
                MenuItem { text: "Вариант 1"; onClicked: console.log(("%1: %2").arg(index).arg(text)); }
                MenuItem { text: "Вариант 2"; onClicked: console.log(("%1: %2").arg(index).arg(text)); }
            }
        }
    }
}
