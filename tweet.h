#ifndef TWEET_H
#define TWEET_H

#include <QAbstractListModel>
#include <QList>


class Tweet
{
public:
    explicit Tweet(const QString &username,
                   const QString &userid,
                   const QString &uptime,
                   const QString &body);

    QString username() const;
    QString userid() const;
    QString uptime() const;
    QString body() const;

private:
    QString _username;
    QString _userid;
    QString _uptime;
    QString _body;

};

class TweetModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum TweetRoles {
        UsernameRole = Qt::UserRole + 1,
        UseridRole,
        UptimeRole,
        BodyRole
    };

    TweetModel(QObject *parent = 0);

    void addTweet(const Tweet &tweet);
    int rowCount(const QModelIndex &parent = QModelIndex()) const;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;

protected:
    QHash<int, QByteArray> roleNames() const;

private:
    QList<Tweet> _tweets;
};

#endif // TWEET_H
