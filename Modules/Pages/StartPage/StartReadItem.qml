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
            Layout.topMargin: Dimensions.y(60)
            Layout.alignment: Qt.AlignHCenter
            text: "КНИГИ"
            font: Appearance.fontUnbounded.semibold55
            color: "#FFFFFF"
        }


        TextBase {
            id: description
            Layout.topMargin: Dimensions.y(22)
            Layout.alignment: Qt.AlignHCenter
            text: "ВЫ МОЖЕТЕ БЕСПЛАТНО СКАЧАТЬ, ЧИТАТЬ ОНЛАЙН И СЛУШАТЬ"
            font: Appearance.fontUnbounded.regular24
            Layout.maximumWidth: Dimensions.x(350)
            horizontalAlignment: Text.AlignHCenter
            opacity: 0.6
        }


        HoleTextButtonBase {
            id: button
            Layout.topMargin: Dimensions.y(30)
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredHeight: Dimensions.y(46)
            Layout.preferredWidth: Dimensions.x(183)
            text: "читать"

            onClicked: root.clicked()
        }


        // Item { Layout.fillHeight: true }

    } // ColumnLayout

} // root
