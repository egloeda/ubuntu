#!/usr/bin/bash

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/egloeda/ubuntu/master/primera_carga.sh)"
# sh -c "$(wget https://raw.githubusercontent.com/egloeda/ubuntu/master/primera_carga.sh -O -)"

apt-get -y update
apt-get -y upgrade

cd /root
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc 

touch /etc/apt/sources.list.d/webmin.list
echo "deb https://download.webmin.com/download/repository sarge contrib" >/etc/apt/sources.list.d/webmin.list

apt-get -y install apt-transport-https
apt-get -y update
apt-get -y install webmin
