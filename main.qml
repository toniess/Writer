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

        color: Appearance.theme

        AnimatedImage {
            anchors.centerIn: parent
            width: height
            height: Dimensions.availableHeight / 10
            source: "qrc:/assets/images/loading.gif"
            visible: !mainLoader.ready
        }
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
        property bool ready: item.ready // должен быть определен у компонентов
        visible: ready
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
