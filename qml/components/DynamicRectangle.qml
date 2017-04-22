import QtQuick 2.7

Item {
    Item {
        id: style
        property color borderColor: "black"
    }

    Connections {
        target: view
        onHandleKeyPress: {
            itemRect.border.color = Qt.colorEqual(itemRect.border.color, style.borderColor) ? randomColor : style.borderColor;
        }
    }

    Rectangle {
        id: itemRect
        height: parent.height
        width: parent.width
        border.width: 2
        border.color: style.borderColor
        property string colorName: colorRandomizer.randomColor()
        color: colorName

        Text {
            anchors.fill: parent
            font.pixelSize: 100
            fontSizeMode: Text.Fit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: " Color: " + itemRect.colorName + " "
            color: (colorRandomizer.colorLightness(itemRect.colorName) < 0.4) ? "white" : "black";
        }

        MouseArea {
            anchors.fill: parent
            onReleased: {
                parent.colorName = colorRandomizer.randomColor();
                parent.color = parent.colorName;
            }
        }
    }
}
