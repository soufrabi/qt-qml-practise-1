import QtQuick


// Window {
//     width: 640
//     height: 480
//     visible: true
//     title: qsTr("Hello World")


//     Item {
//         width:400;height:200

//         TextInput {
//             id:textElement
//             x:25; y:25
//             text: "Qt Quick Tutorial"
//             font.family: "Helvetica"
//             font.pixelSize: 50
//         }

//         Rectangle {
//             x:100; y: 50
//             height: 50
//             width: height*2;
//             color: "lightblue"

//             function foo() {
//                 console.log("Hello from javascript")
//                 return height*2;
//             }
//         }

//         Rectangle {
//             x:30;y:100
//             height: 10
//             width: textElement.width
//             color: "green"
//         }
//     }
// }

// Exercise 1
// Window {
//     id: topWindow
//     width: 400; height: 400
//     visible: true
//     Rectangle {
//         id: topRec
//         width: topWindow.width;
//         height: topWindow.height/2;
//         color: "lightblue";
//         Rectangle {
//             id:topRecChild
//             width: 50; height:50
//             x: topRec.width*0.1;
//             y: topRec.height/2-topRecChild.height/2;
//             color: "white"
//         }
//     }
//     Rectangle {
//         id: bottomRec
//         y:topWindow.height/2;
//         width: topWindow.width;
//         height: topWindow.height/2;
//         color: "green";
//         clip: true
//         Rectangle {
//             x: bottomRec.width*0.3
//             y: bottomRec.height*0.2;
//             height: bottomRec.height*0.3;
//             width: bottomRec.width*0.6;
//             color: "darkblue"
//         }
//     }
// }


Window {
    width: 400; height: 400
    color: "#00a3fc"
    visible: true

    Image {
        x: 150; y: 100
        fillMode: Image.PreserveAspectFit
        // source: "file:///home/test-user/resources/rocket.png"
        source : "qrc:/a/resources/rocket.png"
        // source : "https://someurltoimage.jpg" ;
        width: sourceSize.width*2
        height:  sourceSize.height*2
        visible: true
        Component.onCompleted: console.log("Image has been loaded")
    }
}


