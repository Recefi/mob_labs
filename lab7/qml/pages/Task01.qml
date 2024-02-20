/*******************************************************************************
**
** Copyright (C) 2022 ru.auroraos
**
** This file is part of the My Aurora OS Application project.
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
    Column {
        anchors.centerIn: parent
        spacing: Theme.paddingSmall

        Rectangle {
            id: redCircle
            width: 200
            height: width
            radius: width*0.5
            border.width: 10
            border.color: "grey"
        }
        Rectangle {
            id: yellowCircle
            width: 200
            height: width
            radius: width*0.5
            border.width: 10
            border.color: "grey"
        }
        Rectangle {
            id: greenCircle
            width: 200
            height: width
            radius: width*0.5
            border.width: 10
            border.color: "grey"
        }
    }

    property int count: 0
    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: { parent.count = (parent.count + 1) % 5; }
    }
    state: {
        if (count < 2) { "red" }
        else if (count < 3) { "yellow" }
        else { "green" }
    }
    states: [
        State {
            name: "red"
            PropertyChanges { target: redCircle; color: "red" }
            PropertyChanges { target: yellowCircle; color: "black" }
            PropertyChanges { target: greenCircle; color: "black" }
        },
        State {
            name: "yellow"
            PropertyChanges { target: redCircle; color: "black" }
            PropertyChanges { target: yellowCircle; color: "yellow" }
            PropertyChanges { target: greenCircle; color: "black" }
        },
        State {
            name: "green"
            PropertyChanges { target: redCircle; color: "black" }
            PropertyChanges { target: yellowCircle; color: "black" }
            PropertyChanges { target: greenCircle; color: "green" }
        }
    ]
}
