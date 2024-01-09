import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // Rectangle {
    //     color: "black";
    //     // following causes binding loop
    //     // width: child.width;
    //     // height: child.width;

    //     // the follwing fixes binding loop
    //     implicitWidth: child.implicitWidth;
    //     implicitHeight: child.implicitHeight;


    //     Image {
    //         id: child
    //         source: "qrc:/a/vertical-gradient.png";
    //         anchors.fill: parent;
    //         anchors.margins: 5;
    //     }
    // }


    Rectangle {
        color: "black";


        // following causes binding loop
        width: child.width;
        height: child.width;


        // implicitWidth: child.implicitWidth;
        // implicitHeight: child.implicitHeight;


        Image {
            id: child
            source: "qrc:/a/vertical-gradient.png";

            // hidden binding loop
            width:  parent.width - 5*2;
            height: parent.height - 5*2;
            x:5;
            y:5;
        }

    }
}
