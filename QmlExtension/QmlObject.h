#ifndef QMLOBJECT_H
#define QMLOBJECT_H

#include <QObject>
#include <QtQml>
#include <QList>
//#include <QQmlParserStatus>
#include <QQmlListProperty>
#include <QMap>
#include <QVariant>
#include <QString>
#include <QQmlPropertyMap>
#include <QSharedData>
#include <QSharedDataPointer>
#include <QExplicitlySharedDataPointer>




class QmlObject : public QObject
                , public QSharedData
{
    Q_OBJECT
    Q_PROPERTY(QQmlListProperty<QObject> defaultProperty READ defaultProperty DESIGNABLE false CONSTANT)
    Q_CLASSINFO("DefaultProperty", "defaultProperty")
    QML_ELEMENT

public:
    typedef QExplicitlySharedDataPointer<QmlObject> QESDPtr;
    typedef QSharedDataPointer<QmlObject> QSDPtr;

    explicit QmlObject(QObject *parent = nullptr);
    QmlObject(const QmlObject &obj);
    ~QmlObject() override;


    QQmlListProperty<QObject> defaultProperty();
    int defaultPropertyCount() const;
    QObject* defaultProperty(int index) const;


//QObject interface for qml
    Q_INVOKABLE bool blockSignals(bool block);
    Q_INVOKABLE const QObjectList& children() const;

    Q_INVOKABLE void dumpObjectTree() const;
    Q_INVOKABLE void dumpObjectInfo() const;
    Q_INVOKABLE QList<QString> dynamicPropertyNames() const;

    Q_INVOKABLE QObject* parent() const;
    Q_INVOKABLE QVariant property(const QString& key) const;
    Q_INVOKABLE void setParent(QObject *parent);
    Q_INVOKABLE bool setProperty(const QString& key, const QVariant &value);
    Q_INVOKABLE bool signalsBlocked() const;


signals:
    void parentChanged(QObject* parent);


public slots:

private:
    QList<QObject*> m_defaultProperty;

};


Q_DECLARE_METATYPE(QmlObject)
Q_DECLARE_METATYPE(QmlObject::QESDPtr)
Q_DECLARE_METATYPE(QmlObject::QSDPtr)



#endif // QMLOBJECT_H
