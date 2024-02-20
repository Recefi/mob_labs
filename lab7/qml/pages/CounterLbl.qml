import QtQuick 2.0
import Sailfish.Silica 1.0

Label {
    property string valStr: "0"
    text: (parseInt(valStr) < 10) ? "0"+valStr : valStr
}
