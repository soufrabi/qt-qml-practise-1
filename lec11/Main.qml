import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        color: "black";
        width: 300;
        height:100;

        // Image: {
        //     id: child
        //     source: "qrc:/a/vertical-gradient.png";
        // }
        Image: {
            id: childImage;
        }
    }
}
