import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 400; height: 400;
        color: "lightblue";

        Text {
            id: text1
            text: "Press Me !"
            font.pixelSize: 32;


            MouseArea {
                anchors.fill: parent;
                onPressed: parent.color = "green"
                onReleased: parent.color = "black"
            }
        }

        Text {
            id: text2
            text: "Click Me !"
            font.pixelSize: 32;
            anchors.top: text1.bottom

            MouseArea {
                anchors.fill: parent;
                onClicked: parent.font.bold = !parent.font.bold
            }
        }

        Text {
            text: "Custom 2"
            font.pixelSize: 32;
            anchors.top: text2.bottom
            color: mouseArea3.pressed ? "green" : "red";

            MouseArea {
                id: mouseArea3
                anchors.fill: parent;
            }
        }
    }
}
