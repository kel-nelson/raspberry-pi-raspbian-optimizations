sudo apt-get install bluez-utils bluez-compat bluez-hcidump checkinstall libusb-dev  libbluetooth-dev joystick
wget http://www.pabr.org/sixlinux/sixpair.c 
gcc -o sixpair sixpair.c -lusb
wget http://sourceforge.net/projects/qtsixa/files/QtSixA%201.5.1/QtSixA-1.5.1-src.tar.gz
tar xfvz QtSixA-1.5.1-src.tar.gz
wget https://bugs.launchpad.net/qtsixa/+bug/1036744/+attachment/3260906/+files/compilation_sid.patch
patch ~/QtSixA-1.5.1/sixad/shared.h < compilation_sid.patch
cd QtSixA-1.5.1/sixad
make
sudo mkdir -p /var/lib/sixad/profiles
sudo checkinstall
