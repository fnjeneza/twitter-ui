import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3


MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "tweet.francois"

    width: units.gu(100)
    height: units.gu(75)

    property int un : units.gu(1)


    AdaptivePageLayout {
        anchors.fill: parent
        primaryPage: HomePage {}

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
