import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Canvas {
        anchors.fill: parent
        onPaint: {
            var ctx2d = getContext("2d");
            ctx2d.fillStyle = "skyblue"
            ctx2d.fillRect(0, 0, width, 0.7*height)
            ctx2d.fillStyle = "yellowgreen"
            ctx2d.fillRect(0, 0.7*height, width, 0.3*height)
            ctx2d.fillStyle = "orange"
            ctx2d.fillRect(width/4, height/2, width/2, height/4)
            ctx2d.fillStyle = "orangered"
            ctx2d.fillRect(15*width/24, 15*height/48, width/12, 9*height/48)
            ctx2d.fillStyle = "saddlebrown"
            ctx2d.beginPath()
            ctx2d.moveTo(width/8, height/2)
            ctx2d.lineTo(7*width/8, height/2)
            ctx2d.lineTo(width/2, height/3)
            ctx2d.fill()
            ctx2d.closePath()
        }
    }
}
