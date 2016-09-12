#include "tweet.h"

Tweet::Tweet(const QString &username,
             const QString &userid,
             const QString &uptime,
             const QString &body)
    : _username(username),
      _userid(userid),
      _uptime(uptime),
      _body(body)
{
}

QString Tweet::username() const
{
    return _username;
}

QString Tweet::userid() const
{
    return _userid;
}

QString Tweet::uptime() const
{
    return _uptime;
}

QString Tweet::body() const
{
    return _body;
}

TweetModel::TweetModel(QObject *parent)
    : QAbstractListModel(parent)
{}

void TweetModel::addTweet(const Tweet &tweet)
{
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    _tweets << tweet;
}

int TweetModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return _tweets.count();
}

QVariant TweetModel::data(const QModelIndex &index, int role) const
{
    if(index.row() < 0 || index.row() >= _tweets.count())
    {
        return QVariant();
    }

    const Tweet &tweet = _tweets[index.row()];

    switch (role) {
    case UsernameRole:
        return tweet.username();
        break;
    case UseridRole:
        return tweet.userid();
        break;
    case UptimeRole:
        return tweet.uptime();
        break;
    case BodyRole:
        return tweet.body();
        break;
    default:
        return QVariant();
    }
}

QHash<int, QByteArray> TweetModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[UsernameRole] = "username";
    roles[UseridRole] = "userid";
    roles[UptimeRole] = "uptime";
    roles[BodyRole] = "body";

    return roles;
}
