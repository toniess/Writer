import QtQuick 2.15


// Загрузчик шрифта с логированием

FontLoader {
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
