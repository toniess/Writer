import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import Components
import ComponentsBase


Item {
    id: root

    signal clicked()

    ColumnLayout {
        anchors.fill: parent

        WebImage {
            id: topImage
            Layout.topMargin: Dimensions.y(50)
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: Dimensions.x(400)
            Layout.preferredHeight: Dimensions.y(120)
            fillMode: Image.PreserveAspectFit
            webSource: "StartPage/logo.svg"
        } //topImage


        RowLayout {
            Layout.topMargin: Dimensions.y(200)
            Layout.alignment: Qt.AlignCenter
            Layout.maximumHeight: Dimensions.y(200)
            Layout.fillWidth: true


            Item {
                Layout.preferredWidth: Dimensions.x(80)
                Layout.fillHeight: true

                WebImage {
                    x: (parent.width - width) / 2
                    y: (parent.height - height) / 2
                    width: Dimensions.x(18)
                    height: Dimensions.y(30)

                    fillMode: Image.PreserveAspectFit
                    webSource: "StartPage/leftArrow.svg"
                }

                TapHandler {
                    onTapped: swipeView.decrementCurrentIndex()
                }
            }


            SwipeView {
                id: swipeView
                Layout.fillWidth: true
                interactive: true
                clip: true

                Repeater {
                    model: mainModels.infoBoxes.booksModel

                    delegate: InfoBoxItem {
                        titleItem.font:     Appearance.fontUnbounded.semibold45
                        subtitleItem.font:  Appearance.fontUnbounded.regular26
                        titleItem.text:     model.title
                        subtitleItem.text:  model.subtitle
                        centered: true
                    }
                }

            } // swipeView


            Item {
                Layout.preferredWidth: Dimensions.x(80)
                Layout.fillHeight: true

                WebImage {
                    x: (parent.width - width) / 2
                    y: (parent.height - height) / 2
                    width: Dimensions.x(18)
                    height: Dimensions.y(30)
                    fillMode: Image.PreserveAspectFit
                    mirror: true
                    webSource: "StartPage/leftArrow.svg"
                }

                TapHandler {
                    onTapped: swipeView.incrementCurrentIndex()
                }
            }

        } // RowLayout


        SwipePageIndicator {
            id: pageIndicator
            Layout.topMargin: Dimensions.y(80)
            Layout.alignment: Qt.AlignHCenter
            target: swipeView
        }


        HoleTextButtonBase {
            id: button
            Layout.topMargin: Dimensions.y(60)
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredHeight: Dimensions.y(46)
            Layout.preferredWidth: Dimensions.x(183)
            text: "читать"

            onClicked: root.clicked()
        }

        Item { Layout.fillHeight: true }


    } // ColumnLayout

} // root
