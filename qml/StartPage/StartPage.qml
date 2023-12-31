import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Dimenstions 1.0
import "../controls"


Flickable {
    id: root

    width: Dimensions.availableWidth
    height: Dimensions.availableHeight

    boundsBehavior: Flickable.StopAtBounds
    boundsMovement: Flickable.StopAtBounds
    contentHeight: image1.height + image2.height


    Image {
        id: image1
        width:  Dimensions.availableWidth
        fillMode: Image.PreserveAspectCrop
        height: Dimensions.availableHeight
        source: "qrc:/assets/images/StartPage/background-1.png"
    } // image1


    BlurBoxBase {
        x: Dimensions.x(167)
        y: Dimensions.y(43)
        width: Dimensions.x(592)
        height: Dimensions.y(982)
        radius: Dimensions.x(80)
        sourceImage: image1
    }


    Image {
        id: image2
        y: image1.height
        width: image1.width
        fillMode: Image.PreserveAspectFit
        source: "qrc:/assets/images/StartPage/background-2.png"

    } // image2
}
