import QtQuick 2.0
import Ubuntu.Components 1.3

Sections {
    width: parent.width
    anchors.left: parent.left
    actions: [
        Action {
            iconName: "home"
            text: "Home"
            onTriggered: {print("home")
            }
        },
        Action {
            iconName: "notification"
            text: "Notification"
            onTriggered: print("notification")
        },
        Action {
            iconName: "message"
            text: "Message"
            onTriggered: {
                print("message")
            }
        }

    ]
}
