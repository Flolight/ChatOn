import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

Page {
    id:root

    property string inConversationWith

    header: ToolBar {
        ToolButton {
            text: qsTr("Back")
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            onClicked: root.StackView.view.pop()
        }

        Label {
            id: pageTitle
            text: inConversationWith
            font.pixelSize: 20
            anchors.centerIn: parent
        }
    }

    ColumnLayout {
        anchors.fill: parent

        ListView {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Pane {
            id: pane
            Layout.fillWidth: true


        }
    }

}
