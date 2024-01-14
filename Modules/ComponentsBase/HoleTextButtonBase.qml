import QtQuick 2.15
import Dimenstions 1.0
import Appearance 1.0
import Qt5Compat.GraphicalEffects


// Кнопка с прозразным текстом

Rectangle {
    id: root

    property alias text: mask.text

    signal clicked()

    radius: height / 2

    color: Appearance.softWhite

    scale: mouseArea.containsMouse ? 1.05 : 1

    Behavior on scale {
        NumberAnimation { easing.type: Easing.InOutQuad; duration: 200 }
    }


    layer.enabled: true
    layer.effect: OpacityMask {
        invert: true
        maskSource: mask
    }

    Text {
        id: mask
        width: parent.width
        height: parent.height
        font: Appearance.fontUnbounded.semibold30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        visible: false
    }

    MouseArea {
        id: mouseArea

        anchors.fill: parent
        hoverEnabled: true

        onClicked: root.clicked()
    }

}
