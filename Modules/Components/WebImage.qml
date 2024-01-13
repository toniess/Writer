import QtQuick 2.15

// Изображение с веба

Image {
    property string webSource: ""

    source: "https://raw.githubusercontent.com/toniess/Writer/master/assets/images/" + webSource
}
