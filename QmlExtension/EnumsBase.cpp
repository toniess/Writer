#include "EnumsBase.h"


#include <QCoreApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QDebug>
#include "qqml.h"



namespace {

static void registrator()
{
    qmlRegisterType<EnumsBase>("QmlExtension", 1, 0, "EnumsBase");
}

Q_COREAPP_STARTUP_FUNCTION(registrator)

}



EnumsBase::EnumsBase(QObject *parent)
    : QmlObject(parent)
{

}















