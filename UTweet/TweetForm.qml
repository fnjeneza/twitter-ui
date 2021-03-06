import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

ListItem {
    id: itemId
    width: parent.width
    height: rowlayoutId.implicitHeight

    trailingActions: ListItemActions {
        actions: [
            Action {
                iconName: "mail-reply"
                onTriggered: {}
            },
            Action {
                iconName: "retweet"
                onTriggered: {}
            },
            Action {
                iconName: "like"
                onTriggered: {}
            }
        ]
    }

    property alias username: usernameId
    property alias user: userId
    property alias uptime: uptimeId
    property alias body: bodyId

    RowLayout {
        id: rowlayoutId
        anchors.fill: parent


        Rectangle {
            id: photo
            width: units.gu(6)
            height: units.gu(6)
            color: "black"
        }

        ColumnLayout {


            RowLayout{
                id: firstLine


                Label {
                    id: usernameId
                    text: qsTr("username")
                }
                Label {
                    id: userId
                    text: qsTr("@user_id")
                }
                Label {
                    id: uptimeId
                    text: qsTr("uptime")
                }
            }

            Text {
                id: bodyId
                text: qsTr("write tweet message here")
                Layout.fillHeight: true
                Layout.fillWidth: true
                textFormat: Text.RichText
                linkColor: UbuntuColors.lightGrey
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }
    }
}
