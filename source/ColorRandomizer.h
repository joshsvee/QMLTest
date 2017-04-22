#include <QObject>
#include <QString>

class ColorRandomizer : public QObject
{
    Q_OBJECT

public:
    Q_INVOKABLE QString randomColor();
    Q_INVOKABLE qreal colorLightness(QString baseColor);
};
