pragma Singleton
import QtQuick 2.15
import QtQuick.Window 2.15

// singleton Dimensions

QtObject {

    property bool isDesktop: Screen.width > Screen.height
    property bool isMobile: !isDesktop

    property real availableWidth: isMobile
                                  ? Math.max(Screen.height / 2, Screen.width)
                                  : Screen.width

    property real availableHeight: isDesktop
                                   ? Math.max(Screen.width / 2, Screen.height)
                                   : Screen.height

    property real yRatio: availableHeight / (isDesktop ? 1080 : 930)
    property real xRatio: availableWidth / (isDesktop ? 1920 : 500)


    function x(x) {
        return x * xRatio
    }

    function y(y) {
        return y * yRatio
    }

    function px(x) {
        return x / xRatio
    }

    function py(y) {
        return y / yRatio
    }



    // среднегеометрическое значение, если величина зависит и от высолы и от ширины
    function xy(xy) {
        return Math.sqrt(x(xy) * y(xy))
    }
}
