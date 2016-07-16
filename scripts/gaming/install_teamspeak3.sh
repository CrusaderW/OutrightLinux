#!/bin/bash 
printf "Please download the latest Teamspeak-client from http://www.teamspeak.com/downloads. \n
	The download will be expected in the default download-directoty: ~/Downloads/ \n
	Press any key if the Download is finished."
read 
cd ~
chmod u+x ~/Downloads/TeamSpeak3-Client-linux_*.run
~/Downloads/TeamSpeak3-Client-linux_*.run
#TODO: Add Logo
echo "[Desktop Entry]
Name=Teamspeak 3 Client
GenericName=Teamspeak
Comment=Speak with friends
Comment[de]=Spreche mit Freunden
Exec=/home/crusader/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=/home/crusader/TeamSpeak3-Client-linux_amd64/pluginsdk/docs/client_html/images/logo.png
StartupWMClass=TeamSpeak 3
StartupNotify=true" > ~/Desktop/Teamspeak3-Client.desktop
sudo chmod a+x ~/Desktop/Teamspeak3-Client.desktop
