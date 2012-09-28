#!/bin/bash

mysqladmin -f --password=omega drop SS_mysite >>/vagrant/logs/provision.log 2>&1

chmod g+w /vagrant/public/assets
chmod g+w /vagrant/public/.htaccess
chmod g+w /vagrant/public/mysite/_config.php

usermod -a -G vagrant www-data

cp /vagrant/config/php-date.ini /etc/php5/apache2/conf.d/date.ini

if [ -e /etc/apache2/sites-available/silverstripe ]; then 
  rm /etc/apache2/sites-available/silverstripe
fi

ln -s /vagrant/config/silverstripe.conf /etc/apache2/sites-available/silverstripe
a2dissite default
a2ensite silverstripe
service apache2 reload
