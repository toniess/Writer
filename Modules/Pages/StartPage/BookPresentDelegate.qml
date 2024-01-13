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
    property alias buttonText: button.text

    signal clicked()


    ColumnLayout {
        anchors.fill: parent
        anchors.leftMargin: Dimensions.x(65)
        anchors.rightMargin: Dimensions.x(65)

        Text {
            id: title
            text: "ЯКУТСКИЙ\nПЛЕННИК"
            font: Appearance.fontUnbounded.semibold55
            color: "#FFFFFF"
        }

        Text {
            id: subtitle
            Layout.topMargin: Dimensions.y(37)
            text: "ДЕБЮТНЫЙ\nСБОРНИК\nРАССКАЗОВ"
            font: Appearance.fontUnbounded.regular30
            color: "#FFFFFF"
        }

        Text {
            id: description
            Layout.topMargin: Dimensions.y(22)
            text: "ПРОДАНО БОЛЕЕ 3 МЛН КОПИЙ ПО ВСЕМУ МИРУ. ПОГРУЗИТЕСЬ В УДИВИТЕЛЬНЫЙ МИР РАССКАЗОВ И ИСТОРИЙ"
            font: Appearance.fontUnbounded.regular24
            Layout.maximumWidth: Dimensions.x(450)
            wrapMode: Text.WordWrap
            color: "#FFFFFF"
            opacity: 0.5
        }

        HoleTextButtonBase {
            id: button
            Layout.topMargin: Dimensions.y(49)
            Layout.preferredHeight: Dimensions.y(46)
            Layout.preferredWidth: Dimensions.x(183)
            radius: height / 2
            text: "читать"

            onClicked: root.clicked()
        }

    }
}
