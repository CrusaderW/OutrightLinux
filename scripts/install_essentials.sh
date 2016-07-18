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
	der Verschluesselungsfunktion durzufuehren."
read
sudo nautilus -q
