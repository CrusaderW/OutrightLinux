#!/bin/bash
sudo apt-get install \
	vlc \
	thunderbird \
	pidgin \
	pidgin-otr \
	#TODO: activate OTR with python script
	-y

curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt-get update
sudo apt-get install syncthing -y
