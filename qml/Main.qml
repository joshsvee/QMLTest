import QtQuick 2.7
import "components"

Rectangle {
    id: view
    width: 800
    height: 600
    color: "red"
    focus: true

    signal handleKeyPress(string randomColor);

    Keys.onPressed: {
        view.handleKeyPress(colorRandomizer.randomColor());
    }

    DynamicRectangle {
        anchors.left: parent.left
        anchors.right: parent.horizontalCenter
        anchors.top: parent.top
        anchors.bottom: parent.verticalCenter
    }

    DynamicRectangle {
        id: quad2
        anchors.left: parent.horizontalCenter
        anchors.right: parent.right        
        anchors.top: parent.top
        height: parent.height / 4
    }

    Row {
        anchors.left: parent.horizontalCenter
        anchors.right: parent.right
        anchors.top: quad2.bottom
        anchors.bottom: parent.verticalCenter

        Repeater {
            model: 2
            DynamicRectangle {
                height: parent.height
                width: parent.width / 2
            }
        }
    }

    Grid {
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.horizontalCenter

        rows: 3
        columns: 2

        Repeater {
            model: 6
            DynamicRectangle {
                height: parent.height / parent.rows
                width: parent.width / parent.columns
            }
        }
    }

    Row {
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom
        anchors.left: parent.horizontalCenter
        anchors.right: parent.right

        width: parent.width / 2
        height: parent.height / 2

        Repeater {
            model: 2
            DynamicRectangle {
                height: parent.height
                width: parent.width / 2
            }
        }
    }
}
