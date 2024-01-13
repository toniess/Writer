import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Dimenstions 1.0
import Appearance 1.0

import Components 1.0
import ComponentsBase 1.0


BlurBoxBase {
    id: root

    property alias topImageSource: topImage.webSource


    ColumnLayout {
        anchors.fill: parent


        WebImage {
            id: topImage
            Layout.topMargin: Dimensions.y(50)
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.preferredHeight: Dimensions.y(120)
            fillMode: Image.PreserveAspectFit

        } //topImage


        SwipeView {
            id: swipeView
            Layout.fillWidth: true
            Layout.topMargin: Dimensions.y(40)
            Layout.preferredHeight: Dimensions.y(581)
            interactive: false
            clip: true

            BookPresentDelegate {}

            BookPresentDelegate {}

            BookPresentDelegate {}
        } // swipeView


        RowLayout {
            id: footer
            Layout.topMargin: Dimensions.y(50)
            Layout.leftMargin: Dimensions.x(65)
            Layout.rightMargin: Dimensions.x(65)
            Layout.preferredWidth: root.width
            Layout.preferredHeight: Dimensions.y(65)


            WebImageButton {
                Layout.alignment: Qt.AlignLeft
                webSource: "StartPage/backButton.svg"

                onClicked: swipeView.decrementCurrentIndex()
            }

            SwipePageIndicator {
                id: pageIndicator
                Layout.alignment: Qt.AlignHCenter
                target: swipeView
            }

            WebImageButton {
                Layout.alignment: Qt.AlignRight
                webSource: "StartPage/backButton.svg"
                rotation: 180

                onClicked: swipeView.incrementCurrentIndex()
            }

        } // footer


        Item { Layout.fillHeight: true }

    }
}
