sudo apt-get install libusb-dev build-essential libsane-dev -y
cd /tmp
git clone git://git.debian.org/sane/sane-backends.git
cd sane-backends
./configure
make
make install
echo 'Please insert the following lines into /lib/udev/rules.d/40-libsane.rules \n
# Canon Scan Lide 100 \n
ATTRS{idVendor}=="04a9", ATTRS{idProduct}=="1904", ENV{libsane_matched}="yes"' 
lsusb
echo 'Please insert the correct usb-adress into /etc/sane.d/genesys.conf \n
# Canon Scan Lide 100 \n
usb 0x04a90×1904'
echo 'When you are finished run Scan or Xscan'
