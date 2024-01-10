import QtQuick 2.15


// Загрузчик шрифта с логированием

FontLoader {
    property string webSource: ""

    source: "https://raw.githubusercontent.com/toniess/Writer/master/Modules/" + webSource
    Component.onCompleted: {
        console.log("Font Component.onCompleted", name
                    , ", ready:", status === FontLoader.Ready)
    }

    onStatusChanged: {
        if (status === FontLoader.Error) {
            console.error("with load font", name)
        }
    }
}
