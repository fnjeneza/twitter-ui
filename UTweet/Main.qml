import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3


MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "tweet.njeneza"

    width: units.gu(100)
    height: units.gu(75)

    property int un : units.gu(1)

    AdaptivePageLayout {
        anchors.fill: parent
        primaryPage: page1


        Page {
            id:page1
            header: PageHeader {
                id: pageHeader
                title: "Tweet app"
                extension: SectionBar {}
            }

            Component {
                id: tweetDelegate
                TweetForm {
                    username.text: model.username
                    user.text: model.user
                    uptime.text: model.uptime
                    body.text: model.body
                    body.onLinkActivated: page1.pageStack.addPageToCurrentColumn(page1, page2)
                }
            }
            UbuntuListView {
                id: listViewId
                anchors.fill: parent
                anchors.topMargin:  pageHeader.height + un
                spacing: un
                model: TweetModel {}
                delegate: tweetDelegate
            }
        }

        Page {
            id: page2
            header: PageHeader {
                id: pageHeader2
                title:detailId.user
            }
            TweetDetail {
                id: detailId
                anchors.fill: parent
                anchors.topMargin: pageHeader2.height + un
            }
        }
    }
}
