import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: mdl
        ListElement { txt: "Элемент"; idx: 1; }
        ListElement { txt: "Элемент"; idx: 2; }
        ListElement { txt: "Элемент"; idx: 3; }
    }

    SilicaListView {
        id: lv
        anchors.fill: parent
        spacing: Theme.paddingMedium

        model: mdl
        property int lstIdx: mdl.rowCount()
        header: PageHeader {
            title: "Список"
            extraContent.children: [
                Button {
                    anchors.centerIn: parent
                    text: "Добавить"
                    onClicked: mdl.append({ txt: "Элемент", idx: ++lv.lstIdx })
                }
            ]
        }
        delegate: Rectangle {
            height: 100
            width: parent.width
            Text {
                anchors.centerIn: parent
                text: ("%1 %2").arg(txt).arg(idx)
            }
            MouseArea {
                anchors.fill: parent
                onClicked: mdl.remove(index)
            }
        }
    }
}
