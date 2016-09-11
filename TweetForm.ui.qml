import QtQuick 2.7
import QtQuick.Layouts 1.3

Item {
    width: 400
    height: 400

    ListModel {
        id: tweetsId

        ListElement {
            username: "test"
            userid: "@test"
            uptime: "18h"
            body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore "
        }
        ListElement {
            username: "test"
            userid: "@test"
            uptime: "20h"
            body: "hello world"
        }
        ListElement {
            username: "test"
            userid: "@test"
            uptime: "25h"
            body: "hello world"
        }
    }

    ListView {
        id:listViewid
        spacing: 3
        model: tweetsId
        anchors.fill: parent
        delegate: ElementForm{
            width: parent.width
            username.text: model.username
            user.text: model.userid
            uptime.text: model.uptime
            body.text: model.body
        }

    }
}
