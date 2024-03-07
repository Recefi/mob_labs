import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Particles 2.0

Page {
    Component {
        id: particles
        Item {
            id: particlesArea
            property int duration: 3000
            width: 100
            height: width
            ParticleSystem { id: particleSystem }
            Emitter {
                system: particleSystem
                emitRate: 1000
                maximumEmitted: 100
                lifeSpan: parent.duration
                velocity: TargetDirection {
                    targetX: 0; targetY: 0;
                    targetVariation: 360
                    magnitude: particlesArea.width / 2
                }
            }
            ItemParticle {
                system: particleSystem
                delegate: Rectangle {
                    width: 10
                    height: width
                    radius: width / 2
                    color: "yellow"
                }
            }
            Timer {
                interval: parent.duration
                running: true
                onTriggered: parent.destroy()
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            const object = particles.createObject(parent)
            object.x = mouseX; object.y = mouseY;
        }
    }
}
