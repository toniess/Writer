import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import Components
import ComponentsBase


BlurBoxBase {
    id: root

    signal clicked()

    width: Dimensions.x(595)
    height: Dimensions.y(391)
    radius: Dimensions.x(80)

    ColumnLayout {
        anchors.fill: parent
        anchors.leftMargin: Dimensions.x(57)
        anchors.rightMargin: Dimensions.x(57)


        TextBase {
            id: title
            Layout.topMargin: Dimensions.y(60)
            text: "КНИГИ"
            font: Appearance.fontUnbounded.semibold55
            color: "#FFFFFF"
        }


        TextBase {
            id: description
            Layout.topMargin: Dimensions.y(22)
            text: "ВЫ МОЖЕТЕ СКАЧАТЬ КНИГИ, ЧИТАТЬ ИХ ОНЛАЙН, А ТАКЖЕ СЛУШАТЬ АУДИОКНИГИ"
            font: Appearance.fontUnbounded.regular24
            Layout.maximumWidth: parent.width
            opacity: 0.6
        }


        HoleTextButtonBase {
            id: button
            Layout.topMargin: Dimensions.y(30)
            Layout.preferredHeight: Dimensions.y(46)
            Layout.preferredWidth: Dimensions.x(183)
            text: "читать"

            onClicked: root.clicked()
        }


        Item { Layout.fillHeight: true }

    } // ColumnLayout

} // root
