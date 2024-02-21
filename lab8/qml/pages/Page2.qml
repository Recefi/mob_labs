import QtQuick 2.0
import Sailfish.Silica 1.0
import com.stringlist 1.0

Page {
    StringList {
        id: stringList
    }

    Column {
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        spacing: Theme.paddingMedium

        TextField {
            id: tf
            horizontalAlignment: Text.AlignHCenter
            placeholderText: "Слово"
        }
        Button {
            width: parent.width
            text: "Добавить слово"
            onClicked: stringList.add(tf.text)
        }
        Button {
            width: parent.width
            text: "Удалить слово"
            onClicked: stringList.pop()
        }
        Label {
            width: parent.width
            wrapMode: Text.WordWrap
            text: stringList.asStr
        }
    }
}
