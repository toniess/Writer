import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Dimensions
import Appearance

import ComponentsBase


WebImage {
    id: root
    signal clicked()

    Layout.preferredHeight: Dimensions.x(65)
    Layout.preferredWidth: Dimensions.x(65)

    TapHandler {
        onTapped: root.clicked()
    }
}
