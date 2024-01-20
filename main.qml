import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
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
        mainLoader.sourceComponent = Qt.binding(
            () => Dimensions.isDesktop ? desktopStartPage : mobileStartPage
        )
    }


    Loader {
        id: mainLoader
        width: Dimensions.availableWidth
        height: Dimensions.availableHeight
    }


    Component {
        id: desktopStartPage
        DesktopStartPage { }
    }

    Component {
        id: mobileStartPage
        MobileStartPage { }
    }

} // mainWindow
