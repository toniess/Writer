#include "QmlObject.h"


#include <QCoreApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QDebug>
#include "qqml.h"


namespace {

static void registrator()
{
    qmlRegisterType<QmlObject>("QmlExtension", 1, 0, "QmlObject");
}

Q_COREAPP_STARTUP_FUNCTION(registrator)

}



QmlObject::QmlObject(QObject *parent)
    : QObject(parent)
{

}


QmlObject::QmlObject(const QmlObject &obj)
    : QObject(nullptr)
{
    Q_UNUSED(obj)
}


QmlObject::~QmlObject()
{

}


QQmlListProperty<QObject> QmlObject::defaultProperty(){
    return QQmlListProperty<QObject>(this, &m_defaultProperty);
}


int QmlObject::defaultPropertyCount() const{
    return m_defaultProperty.count();
}


QObject *QmlObject::defaultProperty(int index) const{
    return m_defaultProperty.at(index);;
}


bool QmlObject::blockSignals(bool block){
    return QObject::blockSignals(block);
}


const QObjectList &QmlObject::children() const{
    return QObject::children();
}


void QmlObject::dumpObjectTree() const{
    QObject::dumpObjectTree();
}


void QmlObject::dumpObjectInfo() const{
    QObject::dumpObjectInfo();
}



QList<QString> QmlObject::dynamicPropertyNames() const{
    QList<QString> result;
    QList<QByteArray> dpn = QObject::dynamicPropertyNames();
    for (int i = 0; i < dpn.count(); ++i){
        result.append(QString(dpn[i]));
    }

    return result;
}


QObject *QmlObject::parent() const{
    return QObject::parent();
}


QVariant QmlObject::property(const QString &key) const{
    return QObject::property(key.toStdString().data());
}


void QmlObject::setParent(QObject *parent){
    if (this->parent() != parent){
        qDebug() << "QObject::setParent(parent);" << parent;
        QObject::setParent(parent);
        emit parentChanged(parent);
    }
}


bool QmlObject::setProperty(const QString &key, const QVariant &value){
    return QObject::setProperty(key.toStdString().data(), value);
}


bool QmlObject::signalsBlocked() const{
    return QObject::signalsBlocked();
}
