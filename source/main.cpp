#include <QtWidgets/QApplication>
#include <QtQuick/QQuickView>
#include <QQmlEngine>
#include <QQmlContext>
#include <QTime>
#include "ColorRandomizer.h"

int main(int argc, char *argv[])
{
	QApplication Application(argc, argv);

    qsrand(static_cast<quint64>(QTime::currentTime().msecsSinceStartOfDay()));

	QQuickView qmlView;

    ColorRandomizer colorRandomizer;
    qmlView.engine()->rootContext()->setContextProperty("colorRandomizer", &colorRandomizer);
    qmlView.setResizeMode(QQuickView::SizeRootObjectToView);
    qmlView.setSource(QUrl("qrc:///qml/Main.qml"));
	qmlView.show();

	return Application.exec();
}
