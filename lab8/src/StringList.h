#ifndef STRINGLIST_H
#define STRINGLIST_H

#include <QObject>
#include <QString>

class StringList : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString asStr READ toStr() NOTIFY listChanged)
private:
    QList<QString> strList;
public:
    Q_INVOKABLE void add(QString str) {
        if (str.length() != 0) { strList.append(str); emit listChanged(); }
    }
    Q_INVOKABLE void pop() {
        if (strList.length() != 0) { strList.pop_back(); emit listChanged(); }
    }
    QString toStr() {
        QString tmp = "";
        if (!strList.isEmpty()) {
            for (int i = 0; i < strList.length() - 1; ++i)
                tmp += strList[i].toLower() + ", ";
            tmp += strList[strList.length() - 1].toLower();
            tmp[0] = tmp[0].toUpper();
        }
        return tmp;
    }
signals:
    void listChanged();
};

#endif // STRINGLIST_H
