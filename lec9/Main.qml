import QtQuick

Window {
    id: root
    width: 500
    height: 500
    visible: true
    title: qsTr("Hello World")
    color: "lightgrey"

    Item {
        property int _minside: Math.min(root.width,root.height)
        x: 10 + (root.width)
        scale: Math.min(width/background.sourceSize.width,height/background.sourceSize.height)
        transformOrigin: Item.TopLeft
        Image {
            id: background
            source: "qrc:/a/background.png"
        }

        Image {
            id: largeArm
            source: "qrc:/a/largeArm.png"
            width: 500
            height: 500

            transform: Rotation {
                origin.x: largeArm.width/2
                origin.y: largeArm.height/2
                angle: 90
            }

        }
    }
}
