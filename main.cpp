#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "tweet.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    TweetModel model;
    model.addTweet(Tweet("alpha", "@alpha", "6h", "hello alpha world"));
    model.addTweet(Tweet("beta", "@beta", "16h", "hello beta world"));
    model.addTweet(Tweet("gamma", "@gamma", "18h", "hello gamma world"));
    model.addTweet(Tweet("delta", "@delta", "19h", "hello delta world"));
    model.addTweet(Tweet("epsilon", "@epsilon", "20h", "hello epsilon world"));


    QQmlApplicationEngine engine;
    auto ctxt = engine.rootContext();
    ctxt->setContextProperty("TweetModel", &model);

    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
