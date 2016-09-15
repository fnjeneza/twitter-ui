import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

Item {
    property string username : "username"
    property string user : "@user"
    property string body : "body"
    property string date : "15/09/2016 16:25"
    property string retweets: "x"
    property string favoris: "y"

    ColumnLayout {
        RowLayout {
            Rectangle {
                width: units.gu(6)
                height: units.gu(6)
                color: "black"
            }

            ColumnLayout {
                Text { text :username }
                Text { text :user }

            }
            Button{
                id: addButtonid
                text: "Add user"
            }
        }
        Text { text :body }

        Text { text :date }
        RowLayout {

            Text { text :qsTr(retweets + " retweets")}
            Text { text :qsTr(favoris + " favoris") }
        }

        RowLayout {
            Button {
                id: retweetId
                text: "retweet"
            }
            Button {
                id: citeId
                text: "cite"
            }
            Button {
                id: likeId
                text: "like"
            }
            Button {
                id: moreId
                text: "more"
            }
        }

    }
}
