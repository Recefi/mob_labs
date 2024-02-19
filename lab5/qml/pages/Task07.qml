import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaWebView {
        anchors.verticalCenter: parent.verticalCenter
        height: 0.7 * parent.height
        width: parent.width
        url: "https://google.com"
    }
}
