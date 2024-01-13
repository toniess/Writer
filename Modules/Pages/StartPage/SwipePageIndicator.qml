import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Dimenstions 1.0
import Appearance 1.0

import Components 1.0
import ComponentsBase 1.0


PageIndicator {
    id: pageIndicator

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
}
