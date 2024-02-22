import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    AnimatedSprite {
        anchors.centerIn: parent
        width: 680
        height: 472

        source: "dinoSpritesheet.png"
        frameWidth: 680
        frameHeight: 472
        frameCount: 8
        frameRate: 12
        interpolate: false
    }
}
