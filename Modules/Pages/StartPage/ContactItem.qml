import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import Components
import ComponentsBase


Item {
    id: root

    signal clicked()

    implicitHeight: column.implicitHeight
    implicitWidth: Dimensions.availableWidth

    ColumnLayout {
        id: column
        x: Dimensions.x(57)
        width: parent.width - x * 2


        TextBase {
            id: title
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: Dimensions.y(60)
            text: "КОНТАКТЫ"
            font: Appearance.fontUnbounded.semibold55
            color: "#FFFFFF"
        }


        TextBase {
            id: description
            Layout.topMargin: Dimensions.y(22)
            // lineHeight: 1.3
            text: "ЕСЛИ ВОЗНИКЛИ ВОПРОСЫ, ИДЕИ И ПРЕДЛОЖЕНИЯ"
            font: Appearance.fontUnbounded.regular24
            Layout.maximumWidth: parent.width
            opacity: 0.6
            horizontalAlignment: Text.AlignHCenter
        }


        Flow {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: Dimensions.x(300)
            Layout.topMargin: Dimensions.y(35)
            spacing: Dimensions.x(20)


            HoleTextButtonBase {
                height: Dimensions.y(50)
                width: Dimensions.x(133)
                text: "вк"

                onClicked: root.clicked()
            }


            HoleTextButtonBase {
                height: Dimensions.y(50)
                width: Dimensions.x(133)
                text: "тг"

                onClicked: root.clicked()
            }


            HoleTextButtonBase {
                height: Dimensions.y(50)
                width: Dimensions.x(133)
                text: "fb"

                onClicked: root.clicked()
            }


            HoleTextButtonBase {
                height: Dimensions.y(50)
                width: Dimensions.x(133)
                text: "email"

                onClicked: root.clicked()
            }
        }


        // Item { Layout.fillHeight: true }

    } // ColumnLayout

} // root
