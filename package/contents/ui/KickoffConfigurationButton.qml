/*
 *  Copyright 2016 John Salatas <jsalatas@gmail.com>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  2.010-1301, USA.
 */

import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import QtQuick.Controls 2.5 as QtControls
import org.kde.kquickcontrolsaddons 2.0

PlasmaCore.FrameSvgItem {
    id: button
    property alias icon: iconElement.source
    property alias text: textElement.text
    property string name

    width: units.gridUnit * 6
    height: units.gridUnit * 5

    visible: name != "empty"

    imagePath: "widgets/background"

    PlasmaCore.IconItem {
        id: iconElement

        anchors.centerIn: parent
        width: units.iconSizes.medium
        height: width

        source: icon
    }

    QtControls.Label {
        id: textElement
        anchors {
            top: iconElement.bottom
            left: parent.left
            right: parent.right
        }
        horizontalAlignment: Text.AlignHCenter
        elide: Text.ElideRight
        color: PlasmaCore.ColorScope.textColor
        font.pointSize: theme.smallestFont.pointSize
    }
}
