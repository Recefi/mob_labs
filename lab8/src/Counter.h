#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>

class Counter : public QObject {
    Q_OBJECT
    Q_PROPERTY(int count READ getCount WRITE setCount NOTIFY countChanged)
private:
    int count = 0;
public:
    int getCount() { return count; }
    void setCount(const int _count) { count = _count; emit countChanged(); }
    Q_INVOKABLE void increment() { count++; emit countChanged(); }
    Q_INVOKABLE void reset() { count = 0; emit countChanged(); }

signals:
    void countChanged();
};

#endif // COUNTER_H
