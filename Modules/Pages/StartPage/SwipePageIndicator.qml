import QtQuick
import QtQuick.Controls
import Dimensions
import Appearance


PageIndicator {
    id: root

    property var target: null
    count: target.count
    currentIndex: target.currentIndex


    delegate: Rectangle {

        width: Dimensions.x(14)
        height: width
        radius: width / 2

        border.color: "lightgrey"
        border.width: Dimensions.x(2)

        color: pageIndicator.currentIndex === index
               ? "lightgrey"
               : "grey"

        opacity: 0.8
    }
} // root
