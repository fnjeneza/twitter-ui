import QtQuick 2.4
import Ubuntu.Components 1.3
import QtQuick.Layouts 1.1


MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "tweet.njeneza"

    width: units.gu(100)
    height: units.gu(75)

    Page {
        header: PageHeader {
            id: pageHeader
            title: "Tweet app"
        }

        Component {
            id: tweetDelegate
            TweetForm {
                username.text: model.username
                user.text: model.user
                uptime.text: model.uptime
                body.text: index //model.body
            }
        }
        ListView {
            property int un : units.gu(1)
            anchors.fill: parent
            anchors.topMargin:  pageHeader.height + un
            spacing: un
            model: TweetModel {}
            delegate: tweetDelegate
        }


    }
}
