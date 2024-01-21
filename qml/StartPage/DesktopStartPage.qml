import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import Components
import Pages.StartPage


Flickable {
    id: root

    width: Dimensions.availableWidth
    height: Dimensions.availableHeight

    ScrollBar.horizontal: ScrollBar {}
    ScrollBar.vertical: ScrollBar {}

    boundsBehavior: Flickable.StopAtBounds
    boundsMovement: Flickable.StopAtBounds
    contentHeight: image1.height + image2.height


    WebImage {
        id: image1
        width:  Dimensions.availableWidth
        fillMode: Image.PreserveAspectCrop
        height: Dimensions.availableHeight
        webSource: "StartPage/background-1.webp"

    } // image1


    BooksSwipeBlurBox{
        x: Dimensions.x(167)
        y: Dimensions.y(43)
        parentImageItem: image1
    }


    WebImage {
        id: image2
        y: image1.height
        width: Dimensions.availableWidth
        height: contacts.y + contacts.height + Dimensions.y(60) - y
        fillMode: Image.PreserveAspectCrop
        webSource: "StartPage/background-2.webp"


        WebImage {
            width: Dimensions.x(500)
            height: Dimensions.y(100)
            fillMode: Image.PreserveAspectFit
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.margins: Dimensions.xy(50)
            webSource: "StartPage/logo.svg"
            opacity: 0.8
        }

    } // image2


    BiographyBlurBox {
        x: parent.width - width - Dimensions.x(152)
        y: image2.y + Dimensions.y(43)
        parentImageItem: image2
    }


    StartReadBlurBox {
        x: parent.width - width - Dimensions.x(152)
        y: image2.y + Dimensions.y(829)
        parentImageItem: image2
    }


    ContactBlurBox {
        id: contacts
        x: parent.width - width - Dimensions.x(152)
        y: image2.y + Dimensions.y(1275)
        parentImageItem: image2
    }

}
