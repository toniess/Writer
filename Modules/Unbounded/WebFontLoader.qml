import QtQuick

// Загрузчик web шрифта

FontLoader {
    property string webSource: ""

    source: "https://raw.githubusercontent.com/toniess/Writer/master/Modules/" + webSource
}
