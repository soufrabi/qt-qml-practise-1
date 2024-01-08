import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "#0000ff";
    opacity: 0.5

    Rectangle {
        x:50; y:50;
        width:200;height:300;
        color:"lightblue";
        opacity: 0.5;

        Rectangle {
            x:100;y:25;
            width:200;height: 50;
            color: "red";
            opacity: 0.5;
        }
        Rectangle {
            x:100;y:90;
            width:200;height: 50;
            color: "red";
        }
    }

    Rectangle {
        x:150;y:210;
        width:200;height: 50;
        color: "red";
        opacity: 0.5;
    }

    Rectangle {
        x:150;y:275;
        width:200;height: 50;
        color: "red";
    }


}



