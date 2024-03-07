import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: txtClrModel
        ListElement { txt: "Белый"; bgClr: "#ffffff"; txtClr: "#000000"; }
        ListElement { txt: "Чёрный"; bgClr: "#000000"; txtClr: "#ffffff"; }
        ListElement { txt: "Синий"; bgClr: "#0000ff"; txtClr: "#ff0000"; }
    }
    SilicaListView {
        anchors.verticalCenter: parent.verticalCenter
        height: 0.8 * parent.height
        width: parent.width
        spacing: Theme.paddingMedium

        model: txtClrModel
        delegate: Rectangle {
            height: 100
            width: parent.width
            color: model.bgClr
            Text {
                anchors.centerIn: parent
                text: model.txt
                color: model.txtClr
            }
        }
    }
}
