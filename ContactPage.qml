import QtQuick 2.6
import QtQuick.Controls 2.0

Page{
    id: root
    anchors.fill: parent
    header: ToolBar {
        Label {
            padding: 10
            text: qsTr("Contacts")
            font.pixelSize: 20
            anchors.centerIn: parent
        }
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
            onClicked: root.StackView.view.push("qrc:/ConversationPage.qml", { inConversationWith: modelData })
            Image {
                id: avatar
                //source: "qrc:/" + modelData + ".png"
            }
        }
    }
}
