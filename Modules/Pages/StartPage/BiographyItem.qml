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
            Layout.topMargin: Dimensions.y(76)
            Layout.alignment: Qt.AlignHCenter
            text: "ОБ АВТОРЕ"
            font: Appearance.fontUnbounded.semibold55
            horizontalAlignment: Text.AlignHCenter
        }


        TextBase {
            id: subtitle
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: Dimensions.y(37)
            text: "ГЛУШКОВ ИГОРЬ МИХАЙЛОВИЧ"
            font: Appearance.fontUnbounded.regular30
            horizontalAlignment: Text.AlignHCenter
            Layout.maximumWidth: parent.width
        }


        TextBase {
            id: description
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: Dimensions.y(22)
            lineHeight: 1.3
            text: "РОДИЛСЯ В <b>ОМСКЕ</b> В 1957<br>
                    В 1984 ОКОНЧИЛ <b>СИБАДИ</b><br>
                    В 1995 ОКОНЧИЛ <b>ВМЗФЭИ</b><br>
                    СЛУЖИЛ В ВОЙСКАХ <b>ПВО</b><br>
                    <b>КМС</b> ПО ПЛАВАНИЮ<br>
                    РУКОВОДИЛ ПРОЕКТОМ <b>АЭРОПОРТ “ФЕДОРОВКА”</b>"
            font: Appearance.fontUnbounded.regular24
            horizontalAlignment: Text.AlignHCenter
            Layout.maximumWidth: parent.width
            opacity: 0.6
        }


        HoleTextButtonBase {
            id: button
            Layout.topMargin: Dimensions.y(35)
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredHeight: Dimensions.y(46)
            Layout.preferredWidth: Dimensions.x(263)
            text: "подробнее"

            onClicked: root.clicked()
        }


        // Item { Layout.fillHeight: true }

    } // ColumnLayout

} // root
