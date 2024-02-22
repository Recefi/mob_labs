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
