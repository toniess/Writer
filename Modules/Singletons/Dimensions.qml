pragma Singleton
import QtQuick 2.15
import QtQuick.Window 2.15

// singleton Dimensions

QtObject {

    property real availableWidth: Screen.width
    property real availableHeight: Screen.height
    property real yRatio: Screen.height / 1080
    property real xRatio: Screen.width / 1920

    function x(x) {
        return x * xRatio
    }

    function y(y) {
        return y * yRatio
    }

    // среднегеометрическое значение, если величина зависит и от высолы и от ширины
    function xy(xy) {
        return Math.sqrt(x(xy) * y(xy))
    }
}
