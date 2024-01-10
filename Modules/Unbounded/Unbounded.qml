import QtQuick 2.15
import Dimenstions 1.0


// Шрифт Unbounded

QtObject {
    id: root


    property font regular24: Qt.font({  family: unboundedRegular.name, weight: Font.Normal, pixelSize: Dimensions.xy(24)  })
    property font regular30: Qt.font({  family: unboundedRegular.name, weight: Font.Normal, pixelSize: Dimensions.xy(30)  })

    property font semibold30: Qt.font({  family: unboundedSemiBold.name, weight: Font.DemiBold, pixelSize: Dimensions.xy(30)  })
    property font semibold55: Qt.font({  family: unboundedSemiBold.name, weight: Font.DemiBold, pixelSize: Dimensions.xy(55)  })


    property FontLoaderBase unboundedLight : FontLoaderBase {
        webSource: "Unbounded/Unbounded-Light.ttf"
    }

    property FontLoaderBase unboundedRegular : FontLoaderBase {
        webSource: "Unbounded/Unbounded-Regular.ttf"
    }

    property FontLoaderBase unboundedMedium : FontLoaderBase {
        webSource: "Unbounded/Unbounded-Medium.ttf"
    }

    property FontLoaderBase unboundedSemiBold : FontLoaderBase {
        webSource: "Unbounded/Unbounded-SemiBold.ttf"
    }

}

