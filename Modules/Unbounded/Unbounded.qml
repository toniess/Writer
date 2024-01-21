import QtQuick
import Dimensions


// Шрифт Unbounded

QtObject {
    id: root

    property font regular24: Qt.font({  family: unboundedRegular.name, weight: Font.Normal, pixelSize: Dimensions.xy(24)  })
    property font regular26: Qt.font({  family: unboundedRegular.name, weight: Font.Normal, pixelSize: Dimensions.xy(26)  })
    property font regular30: Qt.font({  family: unboundedRegular.name, weight: Font.Normal, pixelSize: Dimensions.xy(30)  })

    property font semibold30: Qt.font({  family: unboundedSemiBold.name, weight: Font.DemiBold, pixelSize: Dimensions.xy(30)  })
    property font semibold45: Qt.font({  family: unboundedSemiBold.name, weight: Font.DemiBold, pixelSize: Dimensions.xy(45)  })
    property font semibold55: Qt.font({  family: unboundedSemiBold.name, weight: Font.DemiBold, pixelSize: Dimensions.xy(55)  })


    property WebFontLoader unboundedLight : WebFontLoader {
        webSource: "Unbounded/Unbounded-Light.woff"
    }

    property WebFontLoader unboundedRegular : WebFontLoader {
        webSource: "Unbounded/Unbounded-Regular.woff"
    }

    property WebFontLoader unboundedMedium : WebFontLoader {
        webSource: "Unbounded/Unbounded-Medium.woff"
    }

    property WebFontLoader unboundedSemiBold : WebFontLoader {
        webSource: "Unbounded/Unbounded-SemiBold.woff"
    }

}

