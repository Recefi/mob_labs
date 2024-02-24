import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

Page {
    Column {
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        spacing: Theme.paddingLarge
        Video {
            id: video
            width: parent.width
            height: width/2
            source: "https://upload.wikimedia.org/wikipedia/commons/7/79/Big_Buck_Bunny_small.ogv"
        }
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            IconButton {
                icon.source: "image://theme/icon-m-media-rewind"
                onClicked: video.seek(video.position - 10000)
            }
            IconButton {
                icon.source: "image://theme/icon-m-play"
                onClicked: {
                    if (icon.source == "image://theme/icon-m-play") {
                        video.play();
                        icon.source = "image://theme/icon-m-pause";
                    } else {
                        video.pause();
                        icon.source = "image://theme/icon-m-play";
                    }
                }
            }
            IconButton {
                icon.source: "image://theme/icon-m-media-forward"
                onClicked: video.seek(video.position + 10000)
            }
        }
    }
}
