import QtQuick 2.7
import QtQuick.Layouts 1.3

Item {
    id: item1
    width: 400
    height: rowLayout2.implicitHeight

    property alias username: usernameId
    property alias user: userId
    property alias uptime: uptimeId
    property alias body: bodyId

    RowLayout {
        id: rowLayout2
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            width: 40
            height: 40
            color: "#d8d0d0"
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        ColumnLayout {
            id: columnLayout1
            height: 100

            RowLayout {
                id: rowLayout1
                width: bodyId.width
                height: 100

                Text {
                    id: usernameId
                    text: qsTr("username")
                    font.bold: true
                    font.pixelSize: 12
                }

                Text {
                    id: userId
                    text: qsTr("@user_id")
                    font.pixelSize: 12
                }

                Text {
                    id: uptimeId
                    color: "#848a7f"
                    text: qsTr("18 min")
                    font.pixelSize: 12
                }
            }

            Text {
                id: bodyId
                text: qsTr("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore ")
                Layout.fillHeight: true
                Layout.fillWidth: true
                textFormat: Text.RichText
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                font.pixelSize: 12
            }

        }
    }
}
