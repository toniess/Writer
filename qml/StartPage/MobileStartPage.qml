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

    width: Dimensions.availableWidth
    height: Dimensions.availableHeight

    ScrollBar.horizontal: ScrollBar {}
    ScrollBar.vertical: ScrollBar {}

    boundsBehavior: Flickable.StopAtBounds
    boundsMovement: Flickable.StopAtBounds
    contentHeight: image1.height //+ image2.height


    BlurImageBase {
        id: image1
        width:  Dimensions.availableWidth
        fillMode: Image.PreserveAspectCrop
        height: Dimensions.availableHeight
        webSource: "StartPage/background-1.webp"

    } // image1


    WebImage {
        x: ( parent.width - width ) / 2
        y: Dimensions.y(60)
        width: Dimensions.x(400)
        height: Dimensions.y(120)
        fillMode: Image.PreserveAspectFit
        webSource: "StartPage/logo.svg"
    }


    // WebImage {
    //     id: image2
    //     y: image1.height
    //     width: Dimensions.availableWidth
    //     height: contacts.y + contacts.height + Dimensions.y(60) - y
    //     fillMode: Image.PreserveAspectCrop
    //     webSource: "StartPage/background-2.webp"
    // } // image2



}