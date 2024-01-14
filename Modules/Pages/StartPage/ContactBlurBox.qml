import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Dimenstions 1.0
import Appearance 1.0

import Components 1.0
import ComponentsBase 1.0


BlurBoxBase {
    id: root

    signal clicked()

    width: Dimensions.x(595)
    height: Dimensions.y(375)
    radius: Dimensions.x(80)

    ColumnLayout {
        anchors.fill: parent
        anchors.leftMargin: Dimensions.x(57)
        anchors.rightMargin: Dimensions.x(50)


        TextBase {
            id: title
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
        }


        RowLayout {
            Layout.preferredHeight: Dimensions.y(46)
            Layout.fillWidth: true
            Layout.topMargin: Dimensions.y(35)
            spacing: Dimensions.x(20)


            HoleTextButtonBase {
                Layout.preferredHeight: Dimensions.y(50)
                Layout.preferredWidth: Dimensions.x(88)
                text: "вк"

                onClicked: root.clicked()
            }


            HoleTextButtonBase {
                Layout.preferredHeight: Dimensions.y(50)
                Layout.preferredWidth: Dimensions.x(88)
                text: "тг"

                onClicked: root.clicked()
            }


            HoleTextButtonBase {
                Layout.preferredHeight: Dimensions.y(50)
                Layout.preferredWidth: Dimensions.x(88)
                text: "fb"

                onClicked: root.clicked()
            }


            HoleTextButtonBase {
                Layout.preferredHeight: Dimensions.y(50)
                Layout.preferredWidth: Dimensions.x(133)
                text: "email"

                onClicked: root.clicked()
            }
        }


        Item { Layout.fillHeight: true }

    } // ColumnLayout

} // root
