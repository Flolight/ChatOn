import QtQuick 2.6
import QtQuick.Controls 2.0

ApplicationWindow {
    visible: true
    width: 540
    height: 960
    title: qsTr("Chat On")

    Page{
        anchors.fill: parent
        header: Label {
            padding: 10
            text: qsTr("Contacts")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        ListView {
            id: listView
            anchors.fill: parent
            topMargin: 48
            leftMargin: 48
            bottomMargin: 48
            rightMargin: 48
            spacing: 20
            model: ["Michel", "François", "Camille"]
            delegate: ItemDelegate{
                text: modelData
                width: ListView.view.width - ListView.view.leftMargin - ListView.view.rightMargin
                height: avatar.implicitWidth + 32

                Image {
                    id: avatar
                    source: "qrc:/" + modelData + ".png"
                }
            }
        }
    }
}
