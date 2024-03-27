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
    property alias horizontalAlignment: image.horizontalAlignment
    property alias status: image.status

    clip: true

    WebImage {
        id: image
        width: parent.width
        height: parent.height
        visible: false
        cache: true
    }


    GaussianBlur {
        anchors.fill: image
        source: image
        radius: root.blurRadius
        samples: radius * 2 + 1
        cached: true
    }


    ColorOverlay {
        anchors.fill: image
        source: image
        color: "#1A3547"
        opacity: 0.57
        cached: true
    }
}
