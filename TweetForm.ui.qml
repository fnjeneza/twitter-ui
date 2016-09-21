import QtQuick 2.7
import QtQuick.Layouts 1.3

Item {
    width: 400
    height: 400

    ListView {
        id:listViewid
        spacing: 3
        model: TweetModel
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
