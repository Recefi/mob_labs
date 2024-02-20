import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Page {
    property var db: LocalStorage.openDatabaseSync("Db", "1.0")

    Column {
        anchors.fill: parent
        spacing: Theme.paddingLarge

        PageHeader {}
        TextField {
            id: tf
            placeholderText: "Новая заметка"
            horizontalAlignment: Text.AlignHCenter
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить"
            onClicked: {
                if (tf.text.length != 0) {
                    db.transaction(function(tx) {
                        var res = tx.executeSql("INSERT INTO notes (note_txt) VALUES(?);", [tf.text]);
                        mdl.append({ txt: tf.text, idx: parseInt(res.insertId) });
                    });
                }
            }
        }
        PageHeader { title: "Заметки:"; }
        SilicaListView {
            height: 500
            width: parent.width
            spacing: Theme.paddingMedium
            VerticalScrollDecorator {}

            model: ListModel { id: mdl }
            delegate: Rectangle {
                height: 100
                width: parent.width
                Text {
                    anchors.centerIn: parent
                    text: model.txt
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        db.transaction(function(tx) {
                            tx.executeSql("DELETE FROM notes WHERE id=?;", [mdl.get(index).idx]);
                        });
                        mdl.remove(index);
                    }
                }
            }
            Component.onCompleted: {
                mdl.clear()
                db.transaction(function(tx) {
                    //tx.executeSql("DROP TABLE IF EXISTS notes");
                    tx.executeSql("CREATE TABLE IF NOT EXISTS notes (id INTEGER PRIMARY KEY AUTOINCREMENT, note_txt TEXT)");
                    var res = tx.executeSql("SELECT * FROM notes");
                    for (var i = 0; i < res.rows.length; i++) {
                        mdl.append({ txt: res.rows.item(i).note_txt, idx: res.rows.item(i).id });
                    }
                });
            }
        }
    }
}
