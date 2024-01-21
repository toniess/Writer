import QtQuick
import Dimensions
import Qt5Compat.GraphicalEffects


// Не помешать внутрь изображения

Item {
    id: root

    property real radius: 0
    property real blurRadius: 40
    property var parentImageItem: null
    clip: true

    visible: parentImageItem.status === Image.Ready

    Component.onCompleted: {
        if (root.parent == parentImageItem) {
            console.error("BlurBoxBase is inside of Source Image")
            Qt.quit()
        }
    }

    ShaderEffectSource {
        id: shaderSource
        width: root.width
        height: root.height
        sourceItem: root.parentImageItem
        recursive: false
        sourceRect: Qt.rect(root.x - parentImageItem.x,
                            root.y - parentImageItem.y,
                            root.width,
                            root.height)
    }


    Rectangle {
        id: mask
        width:  root.width
        height: root.height
        radius: root.radius
        visible: false
    }


    GaussianBlur {
        anchors.fill: shaderSource
        source: shaderSource
        radius: root.blurRadius
        samples: radius * 2 + 1
        cached: true

        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
            cached: true
        }
    }


    ColorOverlay {
        anchors.fill: shaderSource
        source: shaderSource
        color: "#1A3547"
        opacity: 0.5
        cached: true

        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
            cached: true
        }
    }
}
