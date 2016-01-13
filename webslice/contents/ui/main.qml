import QtQuick 2.0
import QtWebKit 3.0
import QtQuick.Layouts 1.1
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.extras 2.0 as PlasmaExtras

ColumnLayout {
    RowLayout{
        Layout.fillWidth: true
        PlasmaComponents.Button{
            iconSource: "go-previous"
            onClicked: webview.goBack()
            enabled: webview.canGoBack
        }
        PlasmaComponents.Button{
            iconSource: "go-next"
            onClicked: webview.goForward()
            enabled: webview.canGoForward
        }
        PlasmaComponents.TextField{
            Layout.fillWidth: true
            onAccepted: webview.url = text
            text: webview.url
        }
        PlasmaComponents.Button{
            iconSource: "view-refresh"
            onClicked: webview.reload()
        }
    }
    PlasmaExtras.ScrollArea {
        Layout.fillWidth: true
        Layout.fillHeight: true
        WebView {
            id: webview
            url: "http://kde.org"
            anchors.fill: parent
        }
    }
    //There will be RowLayout with buttons for bookmarks and zooming.

}
