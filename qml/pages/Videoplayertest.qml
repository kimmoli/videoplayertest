import QtQuick 2.0
import Sailfish.Silica 1.0
import videoplayertest.Testi 1.0
import QtMultimedia 5.0

Page
{
    id: page

    SilicaFlickable
    {
        anchors.fill: parent

        PullDownMenu
        {
            MenuItem
            {
                text: "About..."
                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"),
                                          { "version": testi.version,
                                              "year": "2014",
                                              "name": "videoplayertest",
                                              "imagelocation": "/usr/share/icons/hicolor/86x86/apps/videoplayertest.png"} )
            }
        }

        MediaPlayer
        {
            id: mediaPlayer
            autoLoad: true
            autoPlay: true
            source:"enter your uri here"
         }

        VideoOutput
        {
            id: videoOutput
            anchors.centerIn: parent
            source: mediaPlayer
            width: parent.width
        }
    }
}


