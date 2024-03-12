import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Page {
    property bool gameOver
    property var db: LocalStorage.openDatabaseSync("Db", "1.0")
    function init() {
        gameOver = false;
        score.frameText = "0";
        mdl.clear();
        for (var i = 0; i < 81; i++)
            mdl.append({ clr: "" });
        cell1.cirClr = getRandClr();
        cell2.cirClr = getRandClr();
        cell3.cirClr = getRandClr();
        next();

        db.transaction(function(tx) {
            tx.executeSql("CREATE TABLE IF NOT EXISTS records (id INTEGER PRIMARY KEY AUTOINCREMENT, nick TEXT, score INTEGER)");
            var res = tx.executeSql("SELECT * FROM records");
            if (res.rows.length > 0) {
                var lastRec = res.rows.item(res.rows.length - 1);
                champ.name = lastRec.nick;
                record.frameText = lastRec.score;
            }
        });
    }
    function getRandInt(min, max) {
        var minCeiled = Math.ceil(min);
        var maxFloored = Math.floor(max);
        return Math.floor(Math.random() * (maxFloored - minCeiled + 1) + minCeiled);
    }
    function getRandClr() {
        var clrInt = getRandInt(0, 6);
        if (clrInt === 0) { return "red"; }
        if (clrInt === 1) { return "green"; }
        if (clrInt === 2) { return "blue"; }
        if (clrInt === 3) { return "yellow"; }
        if (clrInt === 4) { return "cyan"; }
        if (clrInt === 5) { return "violet"; }
        if (clrInt === 6) { return "brown"; }
    }
    function chkScore() {
        var scrChg = false;
        for (var i = 0; i < 77; i++) {
            if (mdl.get(i).clr === "")
                continue;
            var k = i;
            var arr = [];
            arr.push(k);
            while (mdl.get(k+1).clr === mdl.get(k).clr && (k+1)%9 > i%9) {
                arr.push(++k);
                if (k+1 >= 81)
                    break;
            }
            if (arr.length >= 5) {
                score.frameText = parseInt(score.frameText) + arr.length + (arr.length-5)*10;
                scrChg = true;
                for (var s = 0; s < arr.length; ++s)
                    mdl.get(arr[s]).clr = "";
                continue;
            }
            k = i;
            arr = [];
            if (k+10 < 81) {
                arr.push(k);
                while (mdl.get(k+10).clr === mdl.get(k).clr && (k+10)%9 > i%9) {
                    k+=10;
                    arr.push(k);
                    if (k+10 >= 81)
                        break;
                }
            }
            if (arr.length >= 5) {
                score.frameText = parseInt(score.frameText) + arr.length + (arr.length-5)*10;
                scrChg = true;
                for (s = 0; s < arr.length; ++s)
                    mdl.get(arr[s]).clr = "";
                continue;
            }
            k = i;
            arr = [];
            if (k+9 < 81) {
                arr.push(k);
                while (mdl.get(k+9).clr === mdl.get(k).clr) {
                    k+=9;
                    arr.push(k);
                    if (k+9 >= 81)
                        break;
                }
            }
            if (arr.length >= 5) {
                score.frameText = parseInt(score.frameText) + arr.length + (arr.length-5)*10;
                scrChg = true;
                for (s = 0; s < arr.length; ++s)
                    mdl.get(arr[s]).clr = "";
                continue;
            }
            k = i;
            arr = [];
            if (k+8 < 81) {
                arr.push(k);
                while (mdl.get(k+8).clr === mdl.get(k).clr && (k+8)%9 < i%9) {
                    k+=8;
                    arr.push(k);
                    if (k+8 >= 81)
                        break;
                }
            }
            if (arr.length >= 5) {
                score.frameText = parseInt(score.frameText) + arr.length + (arr.length-5)*10;
                scrChg = true;
                for (s = 0; s < arr.length; ++s)
                    mdl.get(arr[s]).clr = "";
                continue;
            }
        }
        return scrChg;
    }
    property var chkdCells: []
    function canMoveCell(curIndex, aimIndex) {
        if (curIndex === aimIndex)
            return true;

        chkdCells.push(curIndex);
        var f = false;
        if (curIndex < 80 && curIndex%9 != 8)
            if (mdl.get(curIndex + 1).clr === "")
                if (chkdCells.indexOf(curIndex + 1) == -1)
                    f += canMoveCell(curIndex + 1, aimIndex);
        if (curIndex > 0 && curIndex%9 != 0)
            if (mdl.get(curIndex - 1).clr === "")
                if (chkdCells.indexOf(curIndex - 1) == -1)
                    f += canMoveCell(curIndex - 1, aimIndex);
        if (curIndex < 72)
            if (mdl.get(curIndex + 9).clr === "")
                if (chkdCells.indexOf(curIndex + 9) == -1)
                    f += canMoveCell(curIndex + 9, aimIndex);
        if (curIndex > 8)
            if (mdl.get(curIndex - 9).clr === "")
                if (chkdCells.indexOf(curIndex - 9) == -1)
                    f += canMoveCell(curIndex - 9, aimIndex);

        return f;
    }
    function next() {
        var arr = [];
        for (var i = 0; i < 81; i++)
            if (mdl.get(i).clr === "")
                arr.push(i);
        if (arr.length == 0) {
            gameOver = true;
            if (parseInt(score.frameText) > parseInt(record.frameText)) { dlg.open(); }
            return;
        }
        var m = getRandInt(0, arr.length - 1);
        mdl.get(arr[m]).clr = cell1.cirClr;
        arr.splice(m, 1);
        if (arr.length == 0) {
            gameOver = true;
            if (parseInt(score.frameText) > parseInt(record.frameText)) { dlg.open(); }
            return;
        }
        m = getRandInt(0, arr.length - 1);
        mdl.get(arr[m]).clr = cell2.cirClr;
        arr.splice(m, 1);
        if (arr.length == 0) {
            gameOver = true;
            if (parseInt(score.frameText) > parseInt(record.frameText)) { dlg.open(); }
            return;
        }
        m = getRandInt(0, arr.length - 1);
        mdl.get(arr[m]).clr = cell3.cirClr;
        arr.splice(m, 1);
        if (arr.length == 0) {
            gameOver = true;
            if (parseInt(score.frameText) > parseInt(record.frameText)) { dlg.open(); }
            return;
        }

        cell1.cirClr = getRandClr();
        cell2.cirClr = getRandClr();
        cell3.cirClr = getRandClr();

        chkScore();
    }
    Dialog {
        id: dlg
        anchors.fill: parent
        DialogHeader {}
        Column {
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width
            spacing: Theme.paddingLarge
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "!!! New Record: " + score.frameText + " !!!"
            }
            TextField {
                id: tf
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width / 2
                placeholderText: "Enter your nick"
                horizontalAlignment: Text.AlignHCenter
            }
        }
        onAccepted: {
            db.transaction(function(tx) {
                tx.executeSql("INSERT INTO records (nick, score) VALUES(?, ?);", [tf.text, parseInt(score.frameText)]);
            });
            init();
        }
    }

    Rectangle {
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        height: 5*board.width/3
        color: "lightgrey"
        MyFrame {
            id: record
            anchors.left: parent.left
            anchors.leftMargin: Theme.horizontalPageMargin
            anchors.bottom: mainFrame.top
            anchors.bottomMargin: Theme.paddingSmall
            width: 3.5*board.cellWidth
            frameText: "100"
        }
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: mainFrame.top
            anchors.bottomMargin: Theme.paddingSmall
            spacing: Theme.paddingSmall
            Label {
                text: "Next"
            }
            Row {
                MyCell { id: cell1; cirScale: 0.6 }
                MyCell { id: cell2; cirScale: 0.6 }
                MyCell { id: cell3; cirScale: 0.6 }
            }
            Label {
                text: "Colors"
            }
        }
        MyFrame {
            id: score
            anchors.right: parent.right
            anchors.rightMargin: Theme.horizontalPageMargin
            anchors.bottom: mainFrame.top
            anchors.bottomMargin: Theme.paddingSmall
            width: 3.5*board.cellWidth
            frameText: "0"
        }

        MyFrame {
            id: mainFrame
            anchors.centerIn: parent
            height: board.height + 2 * board.cellHeight
            width: 48*parent.width/50

            MyBar {
                id: champ
                name: "Champion"
                maxVal: parseInt(record.frameText) + parseInt(score.frameText)
                curVal: record.frameText
                showCrown: parseInt(record.frameText) >= parseInt(score.frameText)
            }
            MyBar {
                x: width + board.width
                name: "Pretender"
                maxVal: parseInt(record.frameText) + parseInt(score.frameText)
                curVal: score.frameText
                showCrown: parseInt(record.frameText) < parseInt(score.frameText)
            }

            GridView {
                id: board
                anchors.centerIn: parent
                width: (page.width < page.height) ? 0.5*page.width : 0.6*page.height
                height: width
                cellWidth: width/9
                cellHeight: cellWidth

                property int selIndex: -1
                model: ListModel { id: mdl }
                delegate: MyCell {
                    cirClr: clr
                    border.color: (index == board.selIndex) ? "yellow" : "dimgrey"
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (mdl.get(index).clr !== "") {
                                if (board.selIndex != index)
                                    board.selIndex = index;
                                else
                                    board.selIndex = -1;
                            } else {
                                if (board.selIndex != -1) {
                                    if (canMoveCell(board.selIndex, index)) {
                                        mdl.get(index).clr = mdl.get(board.selIndex).clr;
                                        mdl.get(board.selIndex).clr = "";
                                        board.selIndex = -1;
                                        if (!chkScore())
                                            next();
                                    }
                                    chkdCells = [];
                                }
                            }
                        }
                    }
                }
                Component.onCompleted: {
                    init();
                }
            }
            Label {
                anchors.centerIn: parent
                text: "Game Over!"
                color: "yellow"
                scale: 3
                opacity: gameOver
            }
        }
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: mainFrame.bottom
            anchors.topMargin: Theme.paddingSmall
            spacing: Theme.horizontalPageMargin
            MyFrame {
                frameText: "HELP"
                MouseArea {
                    anchors.fill: parent
                    onClicked: pageStack.push(Qt.resolvedUrl("Rules.qml"))
                }
            }
            MyFrame {
                frameText: "NEXT"
                MouseArea {
                    anchors.fill: parent
                    onClicked: next()
                }
            }
            MyFrame {
                frameText: "RESTART"
                MouseArea {
                    anchors.fill: parent
                    onClicked: init()
                }
            }
        }
    }
}
