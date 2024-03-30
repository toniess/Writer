#ifndef ENUMSBASE_H
#define ENUMSBASE_H

#include <QObject>
#include "QmlObject.h"



class EnumsBase : public QmlObject
{
    Q_OBJECT
public:
    explicit EnumsBase(QObject *parent = nullptr);


    enum class Opertaion{
        Unknown = -1,
        Add,
        Edit,
        Info
    };
    Q_ENUM(Opertaion)


    enum class UnavailableType {
        UntilTomorrow = 0,
        UntilIEnableItAgain,
        BackToStock
    };
    Q_ENUM(UnavailableType)
    Q_ENUM(QtMsgType)

signals:

};

#endif // ENUMSBASE_H
