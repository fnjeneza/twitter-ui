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
        primaryPage: mainPage

        Page {
            id: mainPage

            header: PageHeader {
                id: pageHeader
                title: "Tweet app"
                extension: Sections {
                    width: parent.width
                    anchors.left: parent.left
                    actions: [
                        Action {
                            iconName: "home"
                            text: "Home"
                            onTriggered: {
                                homePageId.visible = true
                                notificationPageId.visible = false
                                messagePageId.visible = false

                            }
                        },
                        Action {
                            iconName: "notification"
                            text: "Notification"
                            onTriggered: {
                                homePageId.visible = false
                                notificationPageId.visible = true
                                messagePageId.visible = false
                            }
                        },
                        Action {
                            iconName: "message"
                            text: "Message"
                            onTriggered: {
                                homePageId.visible = false
                                notificationPageId.visible = false
                                messagePageId.visible = true
                            }
                        }

                    ]
                } // end sections
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
            } //end PageHeader

            HomePage{
                id: homePageId
                visible: false
            }
            MessagePage {
                id: messagePageId
                visible: false
            }
            NotificationPage{
                id: notificationPageId
                visible: false
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
