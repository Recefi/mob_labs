import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Particles 2.0

Page {
    ParticleSystem { id: particleSystem }
    Emitter {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        system: particleSystem
        emitRate: 200
        lifeSpan: 3000
        lifeSpanVariation: 300
        velocity: AngleDirection {
            angle: -90
            angleVariation: 10
            magnitude: 500
        }
    }
    Gravity {
        anchors.fill: parent
        system: particleSystem
        angle: 90
        magnitude: 250
    }
    ItemParticle {
        system: particleSystem
        delegate: Rectangle {
            width: 10
            height: width
            radius: width / 2
            color: "blue"
        }
    }
}
