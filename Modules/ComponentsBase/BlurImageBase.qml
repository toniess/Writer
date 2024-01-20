import QtQuick
import Dimensions
import Components
import Qt5Compat.GraphicalEffects



Item {
    id: root

    property real blurRadius: 80
    property alias webSource: image.webSource
    property alias fillMode: image.fillMode
    property alias sourceClipRect: image.sourceClipRect

    clip: true

    WebImage {
        id: image
        width: parent.width
        height: parent.height
        visible: false
    }


    GaussianBlur {
        anchors.fill: image
        source: image
        radius: root.blurRadius
        cached: true
        samples: radius * 2 + 1
    }


    ColorOverlay {
        anchors.fill: image
        source: image
        color: "#1A3547"
        opacity: 0.57
        cached: true
    }
}
