import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import ComponentsBase


ColumnLayout {
    id: root
    property alias title: title.text
    property alias subtitle: subtitle.text

    TextBase {
        id: title
        Layout.alignment: Qt.AlignHCenter
        horizontalAlignment: Qt.AlignHCenter
        text: "ЯКУТСКИЙ\nПЛЕННИК"
        font: Appearance.fontUnbounded.semibold45
    }

    TextBase {
        id: subtitle
        Layout.topMargin: Dimensions.y(13)
        Layout.alignment: Qt.AlignHCenter
        horizontalAlignment: Qt.AlignHCenter
        text: "ДЕБЮТНЫЙ\nСБОРНИК\nРАССКАЗОВ"
        font: Appearance.fontUnbounded.regular26
    }
}
