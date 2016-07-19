sudo apt-get install cups csh lib32stdc++6 -y
sudo mkdir -p /var/spool/lpd/
sudo mkdir -p /usr/share/cups/model/
mkdir -p ~/Downloads/brother/hl3040cn/
cd ~/Downloads/brother/hl3040cn/
wget http://www.brother.com/pub/bsc/linux/dlf/hl3040cnlpr-1.1.2-1.i386.deb
wget http://www.brother.com/pub/bsc/linux/dlf/hl3040cncupswrapper-1.1.2-2.i386.deb
sudo dpkg -i --force-architecture *lpr*.deb
sudo dpkg -i --force-architecture *cupswrapper*.deb
sudo apt-get -f install
system-config-printer
