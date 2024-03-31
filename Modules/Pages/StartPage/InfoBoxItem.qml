import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import Components
import ComponentsBase


Item {
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

    implicitHeight: column.implicitHeight
    implicitWidth: Dimensions.availableWidth


    ColumnLayout {
        id: column
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


        Flow {
            Layout.topMargin: Dimensions.y(35)
            Layout.alignment: root.itemAlignment
            spacing: Dimensions.x(21)
            visible: buttons.count > 0

            Layout.preferredWidth: {
                if (buttons.count === 0) return 0
                if (buttons.count === 1) return children[0].width

                let i = 0
                let lineWidth = children[i].width
                while (++i < buttons.count
                       && lineWidth + spacing + children[i].width < parent.width  ) {
                    lineWidth += children[i].width + spacing
                }
                return lineWidth
            }

            Repeater {
                id: buttons

                delegate: HoleTextButtonBase {
                    height: Dimensions.y(46)

                    Binding on implicitWidth{
                        when: root.buttonWidth !== -1
                        value: root.buttonWidth
                    }

                    text: modelData

                    onClicked: root.clicked(text)
                }
            }

        } // flow

    } // ColumnLayout

} // root
