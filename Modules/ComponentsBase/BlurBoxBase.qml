import QtQuick 2.15
import Dimenstions 1.0
import Qt5Compat.GraphicalEffects


// Не помешать внутрь изображения

Item {
    id: root

    property real radius: 0
    property real blurRadius: 40
    property var parentImageItem: null

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
        sourceRect: Qt.rect(root.x, root.y, root.width, root.height)
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
        cached: true
        samples: 50

        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
            cached: true
        }
    }


    ColorOverlay {
        anchors.fill: shaderSource
        source: shaderSource
        color: "#13273B"
        opacity: 0.5
        cached: true

        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
            cached: true
        }
    }
}
