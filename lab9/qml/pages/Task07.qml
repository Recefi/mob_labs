import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

Page {
    Audio {
        id: audio
        playlist: Playlist {
            id: playlist
            playbackMode: Playlist.Loop
            PlaylistItem { source: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3" }
            PlaylistItem { source: "https://samplelib.com/lib/preview/mp3/sample-12s.mp3" }
            PlaylistItem { source: "https://samplelib.com/lib/preview/mp3/sample-15s.mp3" }
        }
    }
    Row {
        anchors.centerIn: parent
        IconButton {
            icon.source: "image://theme/icon-m-media-rewind"
            onClicked: audio.playlist.previous()
        }
        IconButton {
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
        IconButton {
            icon.source: "image://theme/icon-m-media-forward"
            onClicked: audio.playlist.next()
        }
    }
}
