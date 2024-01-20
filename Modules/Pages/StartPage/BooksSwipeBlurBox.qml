import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import Components
import ComponentsBase


BlurBoxBase {
    id: root

    property alias topImageSource: topImage.webSource
    signal clicked()

    width: Dimensions.x(592)
    height: Dimensions.y(982)
    radius: Dimensions.x(80)

    ColumnLayout {
        anchors.fill: parent

        WebImage {
            id: topImage
            Layout.topMargin: Dimensions.y(50)
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: Dimensions.x(400)
            Layout.preferredHeight: Dimensions.y(120)
            fillMode: Image.PreserveAspectFit
        } //topImage


        SwipeView {
            id: swipeView
            Layout.fillWidth: true
            Layout.topMargin: Dimensions.y(40)
            Layout.preferredHeight: Dimensions.y(486)
            interactive: false
            clip: true

            Repeater {
                model: 3

                delegate: BookPresentDelegate {}
            }

        } // swipeView


        HoleTextButtonBase {
            id: button
            Layout.topMargin: Dimensions.y(49)
            Layout.leftMargin: Dimensions.x(65)
            Layout.preferredHeight: Dimensions.y(46)
            Layout.preferredWidth: Dimensions.x(183)
            text: "читать"

            onClicked: root.clicked()
        }


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

    } // ColumnLayout

} // root
