import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    minimumWidth: 240
    height: 600
    title: qsTr("Application")
    font.family: "MS Shell Dlg 2"
    font.pointSize: 11

    Page {
        id: page
        anchors.fill: parent
        background: Rectangle {
            color: "#F1F2F3"
        }

        ScrollView {
            anchors.fill: parent

            Flow {
                width: page.width
                anchors.top: parent.top
                anchors.topMargin: page.height > childrenRect.height + 40 ? (page.height - childrenRect.height)/2 : 20
                anchors.left: parent.left
                anchors.leftMargin: (page.width - childrenRect.width - 40)/2
                leftPadding: 20
                rightPadding: 20
                spacing: 12

                ButtonCategory {
                    title: qsTr("User")
                    description: qsTr("Manage the system settings for the current user")
                    icon: "qrc:///pix/images/icons/64/user.png"
                }

                ButtonCategory {
                    title: qsTr("Storage")
                    description: qsTr("Setup the storage space for user documents")
                    icon: "qrc:///pix/images/icons/64/storage.png"
                }

                ButtonCategory {
                    title: qsTr("Recovery")
                    description: qsTr("Restore the system from a backup file")
                    icon: "qrc:///pix/images/icons/64/recovery.png"
                }
            }
        }
    }
}
