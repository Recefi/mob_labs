import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

Page {
    Audio {
        id: audio
        source: "Ave Maria - Schubert, Quintessential Strings [16BC9Pr99bs].m4a"
    }
    IconButton {
        anchors.centerIn: parent
        icon.source: "image://theme/icon-m-play"
        onClicked: {
            if (icon.source == "image://theme/icon-m-play") {
                audio.play();
                icon.source = "image://theme/icon-m-pause";
            }
            else {
                audio.pause();
                icon.source = "image://theme/icon-m-play";
            }
        }
    }
}
