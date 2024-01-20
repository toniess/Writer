import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import ComponentsBase


Item {
    id: root


    property alias title: title.text
    property alias subtitle: subtitle.text
    property alias description: description.text


    ColumnLayout {
        anchors.fill: parent
        anchors.leftMargin: Dimensions.x(65)
        anchors.rightMargin: Dimensions.x(65)

        TextBase {
            id: title
            text: "ЯКУТСКИЙ\nПЛЕННИК"
            font: Appearance.fontUnbounded.semibold55
        }

        TextBase {
            id: subtitle
            Layout.topMargin: Dimensions.y(37)
            text: "ДЕБЮТНЫЙ\nСБОРНИК\nРАССКАЗОВ"
            font: Appearance.fontUnbounded.regular30
        }

        TextBase {
            id: description
            Layout.topMargin: Dimensions.y(22)
            text: "ПРОДАНО БОЛЕЕ 3 МЛН КОПИЙ ПО ВСЕМУ МИРУ. ПОГРУЗИТЕСЬ В УДИВИТЕЛЬНЫЙ МИР РАССКАЗОВ И ИСТОРИЙ"
            font: Appearance.fontUnbounded.regular24
            Layout.maximumWidth: Dimensions.x(450)
            opacity: 0.5
        }
    }
}
