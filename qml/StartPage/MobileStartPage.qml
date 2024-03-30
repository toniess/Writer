import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import Components
import ComponentsBase
import Pages.StartPage


Flickable {
    id: root

    property bool ready: image1.status === Image.Ready &&
                         image2.status === Image.Ready


    width: Dimensions.availableWidth
    height: Dimensions.availableHeight

    ScrollBar.horizontal: ScrollBar {}
    ScrollBar.vertical: ScrollBar {}

    boundsBehavior: Flickable.StopAtBounds
    boundsMovement: Flickable.StopAtBounds
    contentHeight: content.height


    BlurImageBase {
        id: image1
        width:  Dimensions.availableWidth
        fillMode: Image.PreserveAspectCrop
        height: Dimensions.availableHeight
        webSource: "StartPage/background-1.webp"
    } // image1

    BlurImageBase {
        id: image2
        y: image1.height
        width:  Dimensions.availableWidth
        height: Dimensions.availableHeight * 2
        horizontalAlignment: Image.AlignLeft
        fillMode: Image.PreserveAspectCrop
        webSource: "StartPage/background-2.webp"
    } // image2


    ColumnLayout {
        id: content
        width: Dimensions.availableWidth
        height: image1.height + image2.height

        BooksSwipeItem {
            Layout.preferredWidth:  Dimensions.availableWidth
            Layout.preferredHeight: Dimensions.availableHeight
        }


        Item { Layout.fillHeight: true }


        InfoBoxItem {
            titleItem.text:       mainModels.infoBoxes.biography.title
            subtitleItem.text:    mainModels.infoBoxes.biography.subtitle
            descriptionItem.text: mainModels.infoBoxes.biography.description
            buttons:              mainModels.infoBoxes.biography.buttons
            centered: true

            onClicked: {

            }
        } // biography


        Item { Layout.fillHeight: true }


        InfoBoxItem {
            titleItem.text:       mainModels.infoBoxes.startRead.title
            subtitleItem.text:    mainModels.infoBoxes.startRead.subtitle
            descriptionItem.text: mainModels.infoBoxes.startRead.description
            buttons:              mainModels.infoBoxes.startRead.buttons
            centered: true

            onClicked: {

            }
        } // startRead


        Item { Layout.fillHeight: true }


        InfoBoxItem {
            titleItem.text:       mainModels.infoBoxes.contacts.title
            subtitleItem.text:    mainModels.infoBoxes.contacts.subtitle
            descriptionItem.text: mainModels.infoBoxes.contacts.description
            buttons:              mainModels.infoBoxes.contacts.buttons
            centered: true
            buttonWidth: Dimensions.x(133)

            onClicked: {

            }
        } // contacts


        Item { Layout.fillHeight: true }


    } // columnLayout


} // root
