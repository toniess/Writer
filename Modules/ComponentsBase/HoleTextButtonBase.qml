import QtQuick
import QtQuick.Controls
import Dimensions
import Appearance
import Qt5Compat.GraphicalEffects


// Кнопка с прозразным текстом

//TODO add ripple

Rectangle {
    id: root

    property alias text: mask.text

    signal clicked()

    radius: height / 2

    color: Appearance.softWhite

    scale: !tap.pressed ? 1 : 0.95

    Behavior on scale {
        NumberAnimation { easing.type: Easing.InOutQuad; duration: 100 }
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

    TapHandler {
        id: tap
        onTapped: root.clicked()
    }

} // root
