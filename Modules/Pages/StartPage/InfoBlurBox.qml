import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import Components
import ComponentsBase


BlurBoxBase {
    id: root

    property alias titleItem: title
    property alias subtitleItem: subtitle
    property alias descriptionItem: description
    property alias buttons: buttons.model
    property real buttonWidth: -1

    property bool centered: false

    readonly property var itemAlignment: centered ? Qt.AlignHCenter : Qt.AlignLeft
    readonly property var textAlignment: centered ? Text.AlignHCenter : Qt.AlignLeft

    signal clicked(name: string)


    width: Dimensions.x(595)
    height: column.implicitHeight + Dimensions.y(140)
    radius: Dimensions.x(80)

    ColumnLayout {
        id: column
        y: Dimensions.y(70)
        x: Dimensions.x(57)
        width: parent.width - x * 2


        TextBase {
            id: title
            Layout.fillWidth: true
            Layout.alignment: root.itemAlignment
            font: Appearance.fontUnbounded.semibold50
            horizontalAlignment: root.textAlignment
            visible: text !== ""
        }


        TextBase {
            id: subtitle
            Layout.alignment: root.itemAlignment
            Layout.topMargin: Dimensions.y(37)
            font: Appearance.fontUnbounded.regular30
            horizontalAlignment: root.textAlignment
            Layout.maximumWidth: parent.width
            visible: text !== ""
        }


        TextBase {
            id: description
            Layout.alignment: root.itemAlignment
            Layout.topMargin: Dimensions.y(22)
            lineHeight: 1.3
            font: Appearance.fontUnbounded.regular24
            horizontalAlignment: root.textAlignment
            Layout.maximumWidth: parent.width
            opacity: 0.6
            visible: text !== ""
        }


        GridLayout {
            Layout.topMargin: Dimensions.y(35)
            Layout.alignment: root.itemAlignment
            Layout.maximumWidth: parent.width
            rowSpacing: Dimensions.x(21)
            columnSpacing: Dimensions.y(21)
            visible: buttons.count > 0

            Repeater {
                id: buttons

                delegate: HoleTextButtonBase {
                    height: Dimensions.y(46)
                    width: root.buttonWidth === -1
                           ? implicitWidth
                           : root.buttonWidth
                    text: modelData

                    onClicked: root.clicked(text)
                }
            }

        } // flow

    } // ColumnLayout

} // root
