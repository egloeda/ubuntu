#!/bin/sh

# sh -c "$(wget https://raw.githubusercontent.com/egloeda/ubuntu/master/lamp_12.10.sh -O -)"

apt-get -y install mysql-server-5.5
apt-get -y install apache2 
apt-get -y install php5 php5-dev libapache2-mod-php5
apt-get -y install php5-gd php5-gmp php5-mysql php5-recode php5-snmp  php5-snmp php5-ming php5-mysqlnd php5-adodb  php5-intl php5-curl php5-mcrypt php5-imagick
apt-get -y install postfix
apt-get -y install snmp snmp-mibs-downloader snmpd
echo "<?php phpinfo(); ?>" > /var/www/p1.php

service apache2 restart
service mysql restart
