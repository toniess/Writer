import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Dimenstions 1.0
import "qml/StartPage"

Window {
    id: mainWindow
    width: Dimensions.availableWidth
    height: Dimensions.availableHeight
    visible: true

    Component.onCompleted: {
       openStartPage()
    }

    function openStartPage() {
       mainLoader.sourceComponent = startPageComponent
    }

    Loader {
       id: mainLoader
       width: Dimensions.availableWidth
       height: Dimensions.availableHeight
    }

    Component {
       id: startPageComponent
       StartPage { }
    }

} // mainWindow
