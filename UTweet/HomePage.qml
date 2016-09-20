import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

Item {
    anchors.fill: parent

    Component {
        id: tweetDelegate
        TweetForm {
            username.text: model.username
            user.text: model.user
            uptime.text: model.uptime
            body.text: model.body
            body.onLinkActivated: homePageId.pageStack.addPageToCurrentColumn(homePageId, messagePageId)
        }
    }
    ListView {
        id: listViewId
        anchors.fill: parent
        anchors.topMargin:  pageHeader.height + un
        spacing: un
        model: TweetModel {}
        delegate: tweetDelegate
    }
}
