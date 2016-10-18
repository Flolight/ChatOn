import QtQuick 2.6
import QtQuick.Controls 2.0

ApplicationWindow {
    id: window
    visible: true
    width: 540
    height: 960
    title: qsTr("Chat On")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: ContactPage {}
    }


}
