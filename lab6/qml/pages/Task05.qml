import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    function loadData() {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', "http://www.cbr.ru/scripts/XML_daily.asp", true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                //console.log(xhr.responseText)
                //console.log(xhr.responseText.slice(0,20) + xhr.responseText.slice(43))
                xmlMdl.xml = xhr.responseText.slice(0,20) + xhr.responseText.slice(43);
            }
        }
        xhr.send();
    }

    XmlListModel {
        id: xmlMdl
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
        Component.onCompleted: loadData()
    }
}
