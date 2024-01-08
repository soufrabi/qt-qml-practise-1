import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        x: 100;
        y: 100;
        width: 100;
        height: 100;
        color: "blue";
    }

    Rectangle {
        x: 200;
        y: 100;
        width:  100;
        height: 100;
        color: "green";
    }



    Image {
        id: img1
        x: 100;
        y: 210;
        fillMode:  Image.PreserveAspectFit
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Streichholz.jpg/210px-Streichholz.jpg"
        // source: "https://plus.unsplash.com/premium_photo-1663090372005-78f2581d617d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bGFyZ2V8ZW58MHx8MHx8fDA%3D"
        width: sourceSize.width;
        height: sourceSize.height;
        asynchronous: true;

        onStatusChanged: function () {
            console.log(sourceSize)

            if(img1.status === Image.Loading){
                loadRect.visible = true
                console.log("Image is loading")
                console.log("Image load progress : ",img1.progress)
            }

            if(img1.status === Image.Ready) {
                loadRect.visible = false
                console.log("Changing visibility of Loading Rect to false")
            }
            console.log("Image load progress : ",img1.progress)
        }

        Rectangle {
            id: loadRect
            x: 100;
            y: 210;
            height: 50;
            width: 1000*img1.progress+20
            color: "red";
            visible: false ;
        }
    }


}
