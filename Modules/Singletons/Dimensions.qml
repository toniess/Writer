pragma Singleton
import QtQuick 2.15
import QtQuick.Window 2.15

// singleton Dimensions

QtObject {

    property bool horizontal: Screen.width > Screen.height

    property real availableWidth: !horizontal
                                  ? Math.max(Screen.height / 2, Screen.width)
                                  : Screen.width

    property real availableHeight: horizontal
                                   ? Math.max(Screen.width / 2, Screen.height)
                                   : Screen.height

    property real yRatio: availableHeight / 1080
    property real xRatio: availableWidth / 1920

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
