import QtQuick 2.0
import Ubuntu.Components 1.3

Sections {
    width: parent.width
    anchors.left: parent.left
    model: ["Home", "Notification", "Message"]
    onSelectedIndexChanged: print( "Selected section: " + model[selectedIndex])
}
