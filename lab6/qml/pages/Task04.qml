import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    XmlListModel {
        id: xmlMdl
        source: "http://www.cbr.ru/scripts/XML_daily.asp"
        query: "/ValCurs/Valute"
        XmlRole { name: "name"; query: "Name/string()"; }
        XmlRole { name: "val"; query: "Value/string()"; }
    }
    SilicaListView {
        anchors.fill: parent
        spacing: Theme.paddingMedium

        model: xmlMdl
        header: PageHeader { title: "Валюты" }
        delegate: Column {
            x: Theme.horizontalPageMargin
            width: parent.width - x
            Label { text: name; wrapMode: Text.WordWrap; width: parent.width; }
            Label { text: val }
        }
    }
}
