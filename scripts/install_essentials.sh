#!/bin/bash
sudo apt-get install \
	vlc \
	thunderbird \
	pidgin \
	pidgin-otr \
	#TODO: activate OTR with python script
	seahorse \
	seahorse-nautilus \
	-y

echo "Der Dateimanager (Nautilus) wird nun beendet gestartet um die Inntegration \
	der Verschluesselungsfunktion durzufuehren.\nDruecke eine Taste zum Fortfahren"
read
sudo nautilus -q

curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt-get update
sudo apt-get install syncthing -y
echo '[program:syncthing]
command = /path/to/syncthing/binary -no-browser -home="/home/some_user/.config/syncthing"
directory = /home/some_user/
autorestart = True
user = some_user
environment = STNORESTART="1", HOME="/home/some_user"' | sudo tee --append /etc/supervisord.conf
