import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem { text: "Строка 1"; onClicked: fld.text = text; }
            MenuItem { text: "Строка 2"; onClicked: fld.text = text; }
            MenuItem { text: "Строка 3"; onClicked: fld.text = text; }
            MenuLabel { text: "Заполнить поле" }
        }

        TextField {
            id: fld
            anchors.centerIn: parent
            horizontalAlignment: Text.AlignHCenter
        }

        PushUpMenu {
            MenuItem { text: "Строка 4"; onClicked: fld.text = text; }
            MenuItem { text: "Строка 5"; onClicked: fld.text = text; }
            MenuLabel { text: "Заполнить поле" }
        }
    }
}
