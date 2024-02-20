import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    ConfigurationValue {
        id: setting_1
        key: "/apps/app_name/setting_1"
        defaultValue: "Default"
    }
    ConfigurationValue {
        id: setting_2
        key: "/apps/app_name/setting_2"
        defaultValue: true
    }

    Column {
        anchors.centerIn: parent
        width: parent.width

        TextField {
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            width: parent.width / 2

            text: setting_1.value
            onTextChanged: setting_1.value = text
        }
        TextSwitch {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width / 3
            text: checked ? "On" : "Off"

            checked: setting_2.value
            onCheckedChanged: setting_2.value = checked
        }
    }
}
