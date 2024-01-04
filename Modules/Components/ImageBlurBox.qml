import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Dimenstions 1.0
import Appearance 1.0

import ComponentsBase 1.0

BlurBoxBase {
    id: root

    property alias topImageSource: topImage.source

    ColumnLayout {
        x: Dimensions.x(65)
        width: parent.width - 2 * x
        height: parent.height

        Image {
            id: topImage
            Layout.topMargin: Dimensions.y(50)
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.preferredHeight: Dimensions.y(120)
            fillMode: Image.PreserveAspectFit
        }

        Text {
            Layout.topMargin: Dimensions.y(75)
            text: "ЯКУТСКИЙ\nПЛЕННИК"
            font: Appearance.fontUnbounded.semibold55
            color: "#FFFFFF"
        }

        Text {
            Layout.topMargin: Dimensions.y(37)
            text: "ДЕБЮТНЫЙ\nСБОРНИК\nРАССКАЗОВ"
            font: Appearance.fontUnbounded.regular30
            color: "#FFFFFF"
        }

        Text {
            Layout.topMargin: Dimensions.y(22)
            text: "ПРОДАНО БОЛЕЕ 3 МЛН КОПИЙ ПО ВСЕМУ МИРУ. ПОГРУЗИТЕСЬ В УДИВИТЕЛЬНЫЙ МИР РАССКАЗОВ И ИСТОРИЙ"
            font: Appearance.fontUnbounded.regular24
            Layout.maximumWidth: Dimensions.x(450)
            wrapMode: Text.WordWrap
            color: "#FFFFFF"
            opacity: 0.5
        }

        HoleTextButtonBase {
            Layout.topMargin: Dimensions.y(49)
            Layout.preferredHeight: Dimensions.y(46)
            Layout.preferredWidth: Dimensions.y(183)
            radius: height / 2
            text: "читать"
        }

        Item { Layout.fillHeight: true }
    }
}
