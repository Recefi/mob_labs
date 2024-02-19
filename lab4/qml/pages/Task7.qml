import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ComboBox {
        anchors.verticalCenter: parent.verticalCenter
        label: "Выпадающий список:"
        menu: ContextMenu {
            MenuItem { text: "строка 1" }
            MenuItem { text: "строка 2" }
            MenuItem { text: "строка 3" }
            MenuItem { text: "строка 4" }
            MenuItem { text: "строка 5" }
        }
        onCurrentIndexChanged: console.log(currentItem.text)
    }
}
