/*******************************************************************************
**
** Copyright (C) 2022 ru.auroraos
**
** This file is part of the Моё приложение для ОС Аврора project.
**
** Redistribution and use in source and binary forms,
** with or without modification, are permitted provided
** that the following conditions are met:
**
** * Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** * Redistributions in binary form must reproduce the above copyright notice,
**   this list of conditions and the following disclaimer
**   in the documentation and/or other materials provided with the distribution.
** * Neither the name of the copyright holder nor the names of its contributors
**   may be used to endorse or promote products derived from this software
**   without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
** THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
** FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
** IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
** FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
** OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
** PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
** LOSS OF USE, DATA, OR PROFITS;
** OR BUSINESS INTERRUPTION)
** HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
** WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
** EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
*******************************************************************************/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Item {
        id: tasks23;

        Rectangle {
            id: rectRed;
            width: page.width/4; height: page.width/4;
            color: "#ff0000";
        }

        Rectangle {
            id: rectGreen;
            anchors.left: rectRed.right; anchors.top: rectRed.verticalCenter;
            width: page.width/4; height: page.width/4;
            color: "#00ff00";
        }

        Rectangle {
            anchors.left: rectGreen.horizontalCenter; anchors.bottom: rectGreen.verticalCenter;
            width: page.width/4; height: page.width/4;
            color: "#0000ff";
            Text {
                text: "Квадрат";
                color: "white";
                anchors.centerIn: parent;
            }
        }

        height: 7/16 * page.width;
    }

    Row {
        id: task4;
        anchors.top: tasks23.bottom;

        spacing: page.width/20;
        Column {
            spacing: page.width/20;
            Rectangle { width: page.width/4; height: page.width/4; color: "#ff0000"; }
            Rectangle { width: page.width/4; height: page.width/4; color: "#ff00ff"; }
        }
        Column {
            spacing: page.width/20;
            Rectangle { width: page.width/4; height: page.width/4; color: "#00ff00"; }
            Rectangle { width: page.width/4; height: page.width/4; opacity: 0 }
        }
        Column {
            spacing: page.width/20;
            Rectangle { width: page.width/4; height: page.width/4; color: "#0000ff"; }
            Rectangle { width: page.width/4; height: page.width/4; color: "#000000"; }
        }
        height: 0.6 * page.width;
    }

    Grid {
        id: task5;
        anchors.top: task4.bottom;
        rows: 2;
        columns: 3;
        spacing: page.width/20;
        Rectangle { width: page.width/4; height: page.width/4; color: "#ff0000"; }
        Rectangle { width: page.width/4; height: page.width/4; color: "#00ff00"; }
        Rectangle { width: page.width/4; height: page.width/4; color: "#0000ff"; }
        Rectangle { width: page.width/4; height: page.width/4; color: "#ff00ff"; }
        Rectangle { width: page.width/4; height: page.width/4; opacity: 0 }
        Rectangle { width: page.width/4; height: page.width/4; color: "#000000"; }
    }

    Button {
        anchors.top: task5.bottom;
        anchors.topMargin: Theme.paddingLarge
        anchors.right: parent.right
        text: "Далее"
        onClicked: pageStack.push(Qt.resolvedUrl("Task6.qml"))
    }
}
