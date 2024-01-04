#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    qmlRegisterSingletonType(QUrl("qrc:/Modules/Singletons/Dimensions.qml"), "Dimenstions", 1, 0, "Dimensions");
    qmlRegisterSingletonType(QUrl("qrc:/Modules/Singletons/Appearance.qml"), "Appearance", 1, 0, "Appearance");

    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:/Modules/");
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
