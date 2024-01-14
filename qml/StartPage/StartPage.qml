import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Dimenstions 1.0
import Appearance 1.0

import Components 1.0
import Pages.StartPage 1.0


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
        topImageSource: "StartPage/logo.svg"
    }


    WebImage {
        id: image2
        y: image1.height
        width: image1.width
        fillMode: Image.PreserveAspectFit
        webSource: "StartPage/background-2.webp"
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
        x: parent.width - width - Dimensions.x(152)
        y: image2.y + Dimensions.y(1275)
        parentImageItem: image2
    }

}
