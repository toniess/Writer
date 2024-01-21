import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance
import "qml/StartPage"

Window {
    id: mainWindow
    width: Dimensions.availableWidth
    height: Dimensions.availableHeight
    visible: true

    Rectangle {
        id: background
        anchors.fill: parent

        AnimatedImage {
            anchors.centerIn: parent
            width: height
            height: Dimensions.availableHeight / 10
            source: "qrc:/assets/images/loading.gif"
        }
        color: Appearance.theme
    }

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
