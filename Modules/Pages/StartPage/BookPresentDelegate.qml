import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Dimenstions 1.0
import Appearance 1.0

import ComponentsBase 1.0


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
