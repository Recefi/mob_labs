import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SlideshowView {
        anchors.centerIn: parent
        height: width

        model: taskModel
        itemHeight: width
        itemWidth: width
        delegate: Rectangle {
            height: parent.itemHeight
            width: parent.itemWidth
            Text {
                anchors {
                    top: parent.top
                    topMargin: Theme.paddingMedium
                    horizontalCenter: parent.horizontalCenter
                }
                text: date
            }
            Text {
                anchors.centerIn: parent
                text: desc
            }
        }
    }

    ListModel {
        id: taskModel
        ListElement { desc: "Задача 1"; date: "15.01.24" }
        ListElement { desc: "Задача 2"; date: "18.01.24" }
        ListElement { desc: "Задача 3"; date: "18.01.24" }
        ListElement { desc: "Задача 4"; date: "20.01.24" }
        ListElement { desc: "Задача 5"; date: "21.01.24" }
    }
}
