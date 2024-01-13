import QtQuick 2.15


// Загрузчик web шрифта

FontLoader {
    property string webSource: ""

    source: "https://raw.githubusercontent.com/toniess/Writer/master/Modules/" + webSource
}
