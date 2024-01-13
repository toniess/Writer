import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Dimenstions 1.0
import Appearance 1.0

import ComponentsBase 1.0


WebImage {
    id: root
    signal clicked()

    Layout.preferredHeight: Dimensions.x(65)
    Layout.preferredWidth: Dimensions.x(65)

    TapHandler {
        onTapped: root.clicked()
    }
}
