import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    property alias icon: pixmap.source
    property alias title: labTitle.text
    property alias description: labDescription.text

    signal clicked

    width: 200
    height: 200

    ToolButton {
        anchors.fill: parent

        background: Rectangle {
            color: "#FFFFFF"
            border.width: 1
            border.color: "#C5C9CB"

            Image {
                id: pixmap
                y: 16
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: labTitle
                font.bold: true
                anchors.centerIn: parent
                color: "#303030"
            }

            Label {
                id: labDescription
                anchors.top: labTitle.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                padding: 12
                color: "#616B71"
            }
        }

        opacity: pressed ? 0.9 : 1
        scale: pressed ? 0.97 : 1
    }
}
