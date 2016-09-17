import QtQuick 2.4
import Ubuntu.Components 1.3

Page {
    id: homePageId

    header: PageHeader {
        id: pageHeader
        title: "Tweet app"
        extension: SectionBar {}
        trailingActionBar {
            actions: [
                Action {
                    iconName: "contextual-menu"
                    text: "Contextual menu"
                },
                Action {
                    iconName: "search"
                    text: "Search"
                }
            ]
        }
    }

    Component {
        id: messagePageId
        MessagePage {}
    }

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
