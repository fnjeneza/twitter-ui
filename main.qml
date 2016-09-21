import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 360
    height: 520
    title: qsTr("Twitter")

    TweetForm{
        width: parent.width
    }
}
