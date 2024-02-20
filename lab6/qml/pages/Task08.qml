import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    ConfigurationGroup {
        id: settings
        path: "/apps/app_name/settings"
        property string tfVal: "Default"
        property bool tsVal: true
    }

    Column {
        anchors.centerIn: parent
        width: parent.width

        TextField {
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            width: parent.width / 2

            text: settings.tfVal
            onTextChanged: settings.tfVal = text
        }
        TextSwitch {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width / 3
            text: checked ? "On" : "Off"

            checked: settings.tsVal
            onCheckedChanged: settings.tsVal = checked
        }
    }
}
