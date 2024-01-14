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
    height: Dimensions.y(735)
    radius: Dimensions.x(80)

    ColumnLayout {
        anchors.fill: parent
        anchors.leftMargin: Dimensions.x(57)
        anchors.rightMargin: Dimensions.x(57)


        TextBase {
            id: title
            Layout.topMargin: Dimensions.y(76)
            text: "ОБ АВТОРЕ"
            font: Appearance.fontUnbounded.semibold55
        }


        TextBase {
            id: subtitle
            Layout.topMargin: Dimensions.y(37)
            text: "ГЛУШКОВ ИГОРЬ МИХАЙЛОВИЧ"
            font: Appearance.fontUnbounded.regular30
            Layout.maximumWidth: parent.width
        }


        TextBase {
            id: description
            Layout.topMargin: Dimensions.y(22)
            lineHeight: 1.3
            text: "РОДИЛСЯ В <b>ОМСКЕ</b> В 1957
                    В 1984 ОКОНЧИЛ <b>СИБАДИ</b>
                    В 1995 ОКОНЧИЛ <b>ВМЗФЭИ</b>
                    СЛУЖИЛ В ВОЙСКАХ <b>ПВО</b>
                    <b>КМС</b> ПО ПЛАВАНИЮ
                    РУКОВОДИЛ ПРОЕКТОМ <b>АЭРОПОРТ “ФЕДОРОВКА”</b>"
            font: Appearance.fontUnbounded.regular24
            Layout.maximumWidth: parent.width
            opacity: 0.6
        }


        HoleTextButtonBase {
            id: button
            Layout.topMargin: Dimensions.y(35)
            Layout.preferredHeight: Dimensions.y(46)
            Layout.preferredWidth: Dimensions.x(263)
            text: "подробнее"

            onClicked: root.clicked()
        }


        Item { Layout.fillHeight: true }

    } // ColumnLayout

} // root
