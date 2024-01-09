import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        width: 300;
        height: 100;

        Rectangle {
            x: 0; y: 0;
            width: 100; height:100;
            color: "#ff0000";
        }
        Rectangle {
            x:100; y:0;
            width:100; height:100;
            color: Qt.rgba(0,0.75,0,1);
        }

        Rectangle{
            x:200; y:0;
            width: 100; height: 100;
            color: "blue";
        }
    }

    Item {
        width: 300;
        height: 100;
        y:110;

        Rectangle {
            x:0;y:0;
            width: 100;
            height:100;

            gradient: Gradient {
                GradientStop {
                    position:-0.5;
                    color: "green";
                }
                GradientStop {
                    position: 0.5;
                    color: "blue";
                }
            }
        }

        Rectangle{
            x:100; y:0;
            width:100;
            height:100;
            rotation: 45;
            scale: 1.5

            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "green";
                }

                GradientStop {
                    position: 0.5; color:"yellow";
                }

                GradientStop {
                    position: 1.0; color: "blue";
                }
            }
        }
    }
}
