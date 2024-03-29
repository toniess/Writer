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
    contentHeight: image1.height + image2.height


    BlurImageBase {
        id: image1
        width:  Dimensions.availableWidth
        fillMode: Image.PreserveAspectCrop
        height: Dimensions.availableHeight
        webSource: "StartPage/background-1.webp"
    } // image1


    BooksSwipeItem {
        width:  Dimensions.availableWidth
        height: Dimensions.availableHeight
    }


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
        y: image2.y
        width: Dimensions.availableWidth
        height: image2.height

        BiographyItem { }

        StartReadItem { }

        ContactItem { }

    }


} // root
