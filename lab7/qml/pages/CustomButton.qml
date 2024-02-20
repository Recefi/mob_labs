import QtQuick 2.0
import Sailfish.Silica 1.0

Button {
    default property var txtObj
    property string btnColor: "black"

    text: txtObj.text
    color: btnColor
}
