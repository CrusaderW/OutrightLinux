#!/bin/bash 
printf "Please download the latest Teamspeak-client from http://www.teamspeak.com/downloads. \n
	The download will be expected in the default download-directoty: ~/Downloads/ \n
	Press any key if the Download is finished."
read 
chmod u+x ~/Downloads/TeamSpeak3-Client-linux_*.run
~/Downloads/TeamSpeak3-Client-linux_*.run
