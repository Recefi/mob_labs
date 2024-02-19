import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        anchors.fill: parent

        header: PageHeader { title: "Задачи на неделю" }
        model: ListModel {
            ListElement { desc: "Задача 1"; date: "15.01.24" }
            ListElement { desc: "Задача 2"; date: "18.01.24" }
            ListElement { desc: "Задача 3"; date: "18.01.24" }
            ListElement { desc: "Задача 4"; date: "20.01.24" }
            ListElement { desc: "Задача 5"; date: "21.01.24" }
        }
        section {
            property: 'date'
            delegate: SectionHeader { text: section }
        }
        delegate: Text { text: desc }
    }
}
