import QtQuick 2.7
import QtQuick.Layouts 1.3

Item {
    id: item1
    width: 400
    height: 400

    property int fontsize: 24

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
                width: body.width
                height: 100

                Text {
                    id: username
                    text: qsTr("username")
                    font.bold: true
                    font.pixelSize: 12
                }

                Text {
                    id: userid
                    text: qsTr("@user_id")
                    font.pixelSize: 12
                }

                Text {
                    id: uptime
                    color: "#848a7f"
                    text: qsTr("18 min")
                    font.pixelSize: 12
                }
            }

            Text {
                id: body
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
