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
        spacing: Theme.paddingMedium

        Button { text: "1"; onClicked: pageStack.push(Qt.resolvedUrl("Task01.qml")); }
        Button { text: "2"; onClicked: pageStack.push(Qt.resolvedUrl("Task02_1.qml")); }
        Button { text: "3"; onClicked: pageStack.push(Qt.resolvedUrl("Task03.qml")); }
        Button { text: "4"; onClicked: pageStack.push(Qt.resolvedUrl("Task04.qml")); }
        Button { text: "5"; onClicked: pageStack.push(Qt.resolvedUrl("Task05.qml")); }
        Button { text: "6"; onClicked: pageStack.push(Qt.resolvedUrl("Task06.qml")); }
        Button { text: "7"; onClicked: pageStack.push(Qt.resolvedUrl("Task07.qml")); }
        Button { text: "8"; onClicked: pageStack.push(Qt.resolvedUrl("Task08.qml")); }
        Button { text: "9"; onClicked: pageStack.push(Qt.resolvedUrl("Task09.qml")); }
        Button { text: "10"; onClicked: pageStack.push(Qt.resolvedUrl("Task10.qml")); }
    }
}