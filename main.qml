import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button{
        id: myButton
        x: 20
        y: 10
        width: 100
        height: 50
        text: "V"

        property int rotationAngle: 0

        transform: Rotation {
            id: rotation
            origin.x: myButton.width / 2
            origin.y: myButton.height / 2
            angle: myButton.rotationAngle
        }

        onClicked: {
            myButton.rotationAngle += 180;
            if (myButton.rotationAngle >= 360) {
                myButton.rotationAngle = 0;
            }
        }
    }
}
