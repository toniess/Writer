import QtQuick 2.15

// Изображение с веба

Image {
    id: root
    property string webSource: ""

    source: "https://raw.githubusercontent.com/toniess/Writer/master/assets/images/" + webSource

    Component.onCompleted: {
        let split = source.toString().split('.')
        if (split[split.length-1] === "svg") {
            sourceSize.height = height
            sourceSize.width = width
        }
    }

}
