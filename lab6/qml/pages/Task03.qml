import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property var jsArrMdl: [
        { txt: "Белый", bgClr: "#ffffff", txtClr: "#000000" },
        { txt: "Чёрный", bgClr: "#000000", txtClr: "#ffffff" },
        { txt: "Синий", bgClr: "#0000ff", txtClr: "#ff0000" }
    ]

    SilicaListView {
        anchors.verticalCenter: parent.verticalCenter
        height: 0.8 * parent.height
        width: parent.width
        spacing: Theme.paddingMedium

        model: jsArrMdl
        delegate: Rectangle {
            height: 100
            width: parent.width
            color: modelData.bgClr
            Text {
                anchors.centerIn: parent
                text: modelData.txt
                color: modelData.txtClr
            }
        }
    }
}

