import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // part 1

    // Rectangle {
    //     id: background
    //     width: 300; height: 300;
    //     color: "lightblue";

    //     Rectangle {
    //         color: "green";
    //         y:25; // overriden by anchors.top
    //         height: 50; width: 50;
    //         // anchors.right: background.right
    //         // anchors.top: background.top;
    //         anchors {
    //             right: background.right;
    //             top: background.top;
    //         }
    //     }
    // }

    // part 2

    // Rectangle {
    //     id: background
    //     width: 300; height: 100;
    //     color: "lightblue";

    //     Rectangle {
    //         color: "green";
    //         height: 50
    //         anchors {
    //             top: background.top;
    //             left: background.left;
    //             right: background.right;
    //         }
    //     }
    // }



    // part - centerIn

    // Rectangle {
    //     width: 400; height: 400;
    //     color: "lightblue";

    //     Rectangle {
    //         color: "green";
    //         width: 50; height: 50;
    //         anchors.centerIn: parent;
    //     }
    // }

    // part - fill
    // Rectangle {
    //     width: 400; height: 400;
    //     color: "lightblue";
    //     Rectangle {
    //         color: "green";
    //         anchors.fill: parent;
    //         anchors.margins: 10;
    //     }
    // }


    // part - book, writing - margins gaps between elements


    Rectangle {
        id: bg;
        width: 400;
        height: 200;
        color: "lightblue";

        Image {
            id: book;
            source: "qrc:/a/book.svg";
            anchors.left: bg.left;
            anchors.leftMargin: bg.width/16;
            anchors.verticalCenter: bg.verticalCenter;

        }

        Text {
            text: "Writing";
            font.pixelSize: 32;
            anchors.left:  book.right;
            anchors.leftMargin: 32;
            anchors.baseline: book.verticalCenter;
        }
    }


}
