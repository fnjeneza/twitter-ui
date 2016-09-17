import QtQuick 2.4
import Ubuntu.Components 1.3

Page {
    id: messagePageId

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
}
