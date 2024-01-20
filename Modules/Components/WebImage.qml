import QtQuick
import Dimensions

// Изображение с веба

Image {
    id: root
    property string webSource: ""

    source: "https://raw.githubusercontent.com/toniess/Writer/master/assets/images/" + webSource

}
